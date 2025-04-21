(define (multiply a b)
  (if (zero? b)
    0
    (+ a (multiply a (sub1 b)))))

(print (multiply 3 3))