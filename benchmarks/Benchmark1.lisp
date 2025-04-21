(define (loop n)
  (if (= n 0)
      0
      (loop (sub1 n))))

(print (loop 2000))