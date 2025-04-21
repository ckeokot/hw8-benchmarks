(define (f a b) (+ a b))
(define (g x y) (+ (f x y) (f x y)))
(define (h c d) (+ (g c d) (g c d)))

(print (h 1 2))