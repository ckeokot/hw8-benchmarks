(define (f x y) (+ (add1 x) (add1 (add1 (+ (add1 11) (add1 (add1 y)))))))
(print (add1 (f 9 4)))