(define (fib n)
    (if (< n 2)
        n
        (+ (fib (- n 1)) (fib (- n 2)))
    )
)

(do
    (print (fib 15))
    (newline)
    (print (+ (fib 15) (fib 15)))
    (newline)
    (print (- (fib 15) (fib 15)))
)