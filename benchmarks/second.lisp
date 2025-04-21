(define (f x y z) (+ (+ x y) z))
(define (g x y z) (+ (- x y) z))
(define (k x y z) (- (+ x y) z))
(define (l x y z) (- (- x y) z))

(let ((x 2))
  (let ((y 3))
    (let ((z 4)) (do (f x y z) (g x y z) (k x y z) (l x y z)))))

