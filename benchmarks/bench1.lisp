(define (fib n) (if (< n 2)  n (+ (fib (- n 1)) (fib (- n 2)))))

(define (main) (do (print (fib 10)) (newline)))

(main)