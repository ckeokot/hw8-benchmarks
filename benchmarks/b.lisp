(define (add-two x)
  (+ x 2))

(define (add-three x)
  (+ x 3))

(define (combine x y)
  (let ((a (add-two x)))
    (let ((b (add-three y)))
      (+ a b))))

(define (main)
  (let ((result (combine 10 20)))
    (print result)))

(main)