(define (f a b c d) (+ a (+ b (- c d))))
(define (g a b) (< a b))
(print (g (f 1 2 3 4) (f 4 3 2 1)))