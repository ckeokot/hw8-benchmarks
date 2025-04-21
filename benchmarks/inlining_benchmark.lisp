(define (f p) (+ (sub1 (left p)) (right p)))
(print (let ((a (pair 64 (pair 128 256)))) (let ((p 0)) (f a))))