(define (f a b c counter) 
    (if (= counter 0) 
        0 
        (+ (+ (- (+ a b) counter) c) (f a b c (- counter 1)))
        ))
(f 1 2 3 1000)
