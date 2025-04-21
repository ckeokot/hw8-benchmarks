(define (f x y) (+ x (add1 (sub1 y))))
(define (g n e) 
    (if 
        (zero? n) 
        e 
        (g (sub1 n) (+ e n))
    )
)
(define (sum n) (g n 0))

(print 
    (let
        ((x (+ (- (f 1 1) (f 1 (f 1 1))) (- (sum 10) 1)))) 
        (if 
            (zero? (f 1 -1)) 
            (f x (add1 (sub1 (+ 1 1))))
            (f x (- (sub1 (+ 0 1)) (sub1 (+ 1 0))))
        )
    )
)