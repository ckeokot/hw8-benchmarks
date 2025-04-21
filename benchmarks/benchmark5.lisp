(define (add2 x) (+ x 2))
(define (sub2 x) (- x 2))

(print (let ((a 1)) (let ((b (+ a (add2 1)))) (let ((c (+ b (sub2 1)))) (+ (+ a b) (- (+ a b) (+ (+ a b) c)))))))