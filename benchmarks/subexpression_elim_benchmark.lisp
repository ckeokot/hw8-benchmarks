(define (complex-expr x y)
  (let ((expr1 (+ (+ x y) (+ x 10))))
    (let ((expr2 (+ (+ x y) (+ x 10))))
      (let ((expr3 (+ (+ x y) (+ x 10))))
        (+ expr1 (+ expr2 expr3))))))

(let ((a 42))
  (let ((b 17))
    (complex-expr a b)))