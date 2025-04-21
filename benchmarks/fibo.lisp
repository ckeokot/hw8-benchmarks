(define (mul a b)
  (if (zero? b)
      0
      (+ a (mul a (sub1 b)))))

(print (mul 15 12))

