(define (calc x)
  (let ((y (+ x 2)))
    (+ y (+ y y))))
(do (calc 5))
