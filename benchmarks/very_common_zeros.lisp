(define (recursive-zero n) (if (zero? n) 0 (recursive-zero (sub1 n))))

(define (fib a) 
    (if (zero? a) 
        (recursive-zero 10000)
        (if (= a 1) 
            (+ (recursive-zero 1000) 1)
            (+ (fib (- a (+ (recursive-zero 10000) 1))) (fib (- a (add1 (+ (recursive-zero 1000) 1)))))
        )
    )
)

(print (fib 20))