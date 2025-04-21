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
        ((x (+ (- 6 1) (- 10 2)))) 
        (if 
            (zero? (sum 0)) 
            (+ (+ (+ (sum x) (sum x)) (sum x)) (sum x))
            (+ (- (+ (sum x) (sum x)) (sum x)) (sum x))
        )
    )
)