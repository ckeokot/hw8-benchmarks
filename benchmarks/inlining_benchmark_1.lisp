(define (add-ten x) (+ x 10))
(define (sub-five x) (- x 5))
(define (double x) (+ x x))

(let ((input (read-num)))
  (let ((result1 (add-ten input)))
    (let ((result2 (sub-five result1)))
      (let ((result3 (double result2)))
        (let ((result4 (add-ten result3)))
          (double result4))))))