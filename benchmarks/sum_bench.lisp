(define (sum n)
  (if (= n 1)
      1
      (+ n (sum (- n 1)))))

(print (sum 5))

