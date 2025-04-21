(define (add2 x) (+ x 2))
(define (sub2 x) (- x 2))
(define (add3 x) (+ x 3))
(define (sub3 x) (- (sub2 x) 1))
(define (monster-f a b c) (let ((x (+ (+ a 2) 3))) (let ((y (- x x))) (let ((z (+ y (+ x b)))) (let ((w (- z (+ b c)))) w)))))

(print (let ((a (add2 (add2 (add2 (add2 (add2 (add2 2)))))))) (let ((b (sub2 3))) (let ((c (add3 3))) (let ((d (sub3 4))) (let ((e (monster-f a b c))) (+ e d)))))))