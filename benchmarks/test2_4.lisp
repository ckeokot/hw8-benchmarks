(define (multiply a b) (if (zero? b) 0 (+ a (multiply a (- b 1)))))
(let ((x 3)) (print (multiply x 100)))