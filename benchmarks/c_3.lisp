(define (f a b c d e) a)
(define (g a) (if (zero? a) 0 (let ((b 1)) (+ (g (- a 1)) (+ b (f b a a a a))))))
(define (h a) (if (zero? a) 0 (let ((b 1)) (+ (h (- a 1)) (+ b (g 1000))))))
(print (h 5000))