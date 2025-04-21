(define (f x y) (+ x y))
(define (g x y) (f x y))
(define (h x) (g x x))
(h 1)
