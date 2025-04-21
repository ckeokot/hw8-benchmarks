(define (f a b c d) (+ a (- b (+ c d))))
(let ((a 1)) (let ((b 2)) (f b a b a)))