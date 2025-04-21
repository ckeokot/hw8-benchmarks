(define (g a b c) (- 2 (+ a b)))
(define (f x y z) (pair 2 (pair (g z y z) (pair x (pair y (pair z ()))))))
(print (f 1 2 3))