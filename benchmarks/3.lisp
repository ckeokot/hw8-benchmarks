(define (sum3 a b c)
  (+ a (+ b c)))

(print(let ((x 10))(let ((y (add1 x)))(let ((z (sub1 y)))(sum3 x y z)))))
