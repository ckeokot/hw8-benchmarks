(define (ack m n)
  (if (zero? m)
      (add1 n)
      (if (zero? n)
          (ack (sub1 m) 1)
          (ack (sub1 m) (ack m (sub1 n))))))

(print (ack 2 2))

