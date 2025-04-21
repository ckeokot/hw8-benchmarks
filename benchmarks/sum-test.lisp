(define (sum n acc)
  (if (= n 0)
      acc
      (sum (- n 1) (+ acc n))))

(print (sum 100 0))