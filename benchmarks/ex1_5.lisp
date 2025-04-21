(define (double x) (+ x x))
(define (triple x) (+ x (double x)))
(define (quad x) (double (double x)))

(do
  (let ((x (triple 3)))
    (let ((y (if (= x 9)
                 (+ (double 2) (triple 1))
                 (quad 1))))
      (let ((z (+ y (triple 2))))
        (if (= z 15)
            (print (- z 3))
            (print (+ z 3))))))
)