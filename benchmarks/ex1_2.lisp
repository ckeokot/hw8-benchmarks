(define (fib n)
 (if (< n 0)
    0
    (if (zero? n)
        0
        (if (= 1 n)
            1
            (+ (fib (sub1 n)) (fib (- n 2)))))))

(do (print (fib 7))
    (print (fib 8))
    (print (fib 9)))