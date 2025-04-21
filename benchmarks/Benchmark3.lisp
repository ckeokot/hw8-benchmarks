(define (sum n accumulator)
  (if (= n 0)
      accumulator
      (sum (sub1 n) (+ accumulator n))))

(print (sum 1000 0))
