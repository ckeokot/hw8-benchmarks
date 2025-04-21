(define (f x y) (+ x y))
(define (g n) (if ( = n 0 ) (let ((x 2)) (let ((y 3)) (f y x))) (do (g (- n 1)) (let ((x 2)) (let ((y 3)) (f y x))))))
(g 1000000)
