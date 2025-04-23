#!/usr/bin/env python3

import os
import sys
import argparse
import json
import subprocess
import time
import csv
import multiprocessing
from tqdm import tqdm

N = 10


def input_file(benchmark):
    pre, _ = os.path.splitext(benchmark)
    return pre + ".in"

# Helper function to compile a single benchmark
def compile_benchmark(args):
    benchmark, passes_str, output_dir = args
    compile_cmd = "dune exec --root . bin/compile.exe -- {} {} {}".format(
        passes_str,
        os.path.join(os.path.relpath("benchmarks", start=".."), benchmark),
        os.path.relpath(output_dir, start=".."),
    )
    try:
        subprocess.run(
            compile_cmd,
            shell=True,
            cwd="..",
            check=True,
            stdout=subprocess.PIPE, # Capture stdout
            stderr=subprocess.PIPE, # Capture stderr
        )
        return (benchmark, True, None) # Indicate success
    except subprocess.CalledProcessError as e:
        error_message = f"Error compiling {benchmark}:\nSTDOUT:\n{e.stdout.decode() if e.stdout else 'N/A'}\nSTDERR:\n{e.stderr.decode() if e.stderr else 'N/A'}"
        return (benchmark, False, error_message) # Indicate failure and provide error message

def bench(passes: "list[str]"):
    passes = " ".join("-p {}".format(p) for p in passes)
    output_dir = "compiled_benchmarks"
    benchmarks = [f for f in os.listdir("benchmarks") if f.endswith(".lisp")]

    # First, compile all benchmarks in parallel
    compile_tasks = [(benchmark, passes, output_dir) for benchmark in benchmarks]
    failed_compilations = []

    # Use a process pool to parallelize compilation
    num_processes = multiprocessing.cpu_count()
    results = []
    with multiprocessing.Pool(processes=num_processes) as pool:
        # Use tqdm to show progress on the pool.map operation
        results = list(tqdm(pool.imap_unordered(compile_benchmark, compile_tasks),
                           total=len(compile_tasks),
                           desc=f"Compiling benchmarks in parallel using {num_processes} processes"))

    # Check results and collect failures
    successful_benchmarks = []
    for benchmark, success, error_msg in results:
        if success:
            successful_benchmarks.append(benchmark)
        else:
            failed_compilations.append((benchmark, error_msg))

    # Exit early if we failed compiling any of the benchmarks 
    if failed_compilations:
        print("\n--- Compilation Errors ---", file=sys.stderr)
        for benchmark, error_msg in failed_compilations:
            print(error_msg, file=sys.stderr)
        print("--------------------------\n", file=sys.stderr)
        print(f"Warning: {len(failed_compilations)} benchmarks failed to compile.", file=sys.stderr)
        print(f"Warning: only {len(successful_benchmarks)} benchmarks successfully compiled.", file=sys.stderr)
        sys.exit(1)

    # Then, run each benchmark N times and record the results
    results = {}
    for benchmark in tqdm(benchmarks, desc=f"Running benchmarks {N=} times"):
        runs = []
        run_cmd = os.path.join("compiled_benchmarks", "{}.exe".format(benchmark))
        stdin = ""
        input_path = os.path.join("benchmarks", input_file(benchmark))
        if os.path.exists(input_path):
            stdin = open(input_path).read()
        for i in range(N):
            start = time.perf_counter()
            subprocess.run(
                run_cmd,
                input=stdin,
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                universal_newlines=False,
            )
            end = time.perf_counter()
            runs.append(end - start)
        results[benchmark] = sum(runs) / len(runs)
    return results


def main():
    if not os.path.exists("benchmarks"):
        print(
            "Benchmark script should be run from the root of the benchmarks repository"
        )
        sys.exit(1)
    parser = argparse.ArgumentParser(
        description="CS 164 Homework 8 Benchmark Script"
    )
    subprocess.run(
            "dune build",
            shell=True,
            cwd="..",
            check=True,
        )
    parser.add_argument("--config", type=argparse.FileType("r"), default="config.json")
    parser.add_argument("--output", type=argparse.FileType("w"), default="results.csv")
    args = parser.parse_args()
    config = None
    try:
        config = json.load(args.config)
    except json.decoder.JSONDecodeError as e:
        print("Error reading config file {}: {}".format(args.config.name, e))
        sys.exit(1)
    results = {}
    config_iterator = tqdm(config.keys(), desc="Benchmarking configurations")
    for name in config_iterator:
        config_iterator.set_postfix_str(f"Config: {name}")
        results[name] = bench(config[name])
    writer = csv.writer(args.output)
    writer.writerow(("Benchmark name", "Configuration", "Time taken (s)"))
    for benchmark in sorted(results[name].keys()):
        for name in sorted(results.keys()):
            writer.writerow((benchmark, name, results[name][benchmark]))


if __name__ == "__main__":
    main()

