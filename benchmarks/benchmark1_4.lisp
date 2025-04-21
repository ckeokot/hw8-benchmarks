(define (add2 x) (add1 (add1 x)))
(define (add3 x) (add1 (add2 x)))
(define (add4 x) (add1 (add3 x)))
(define (add5 x) (add1 (add4 x)))

(define (loop curr end)
    (if (< end curr) 
        curr 
        (loop (add5 curr) end)
    )
)

(print (loop 0 10000))