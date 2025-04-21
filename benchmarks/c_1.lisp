(define (g a b c) (- 2 (+ 5 (- 5 (+ b c)))))
(define (f x) (pair 2 (pair (g x x x) (pair x (pair x (pair x ()))))))
(print (f 1))