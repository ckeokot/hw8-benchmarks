(define (f counter) (if (= counter 0) 0 (+ (- (+ (add1 (sub1 3)) (- 4 (+ 1 2))) (+ 4 (- 0 4))) (f (- counter 1))))) 
(f 1000)
