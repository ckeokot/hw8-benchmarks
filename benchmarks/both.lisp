(define (compute)
  (+ 1 (+ 2 (+ 3 (+ 4 (+ 5 (+ 6 7)))))))

(define (loop n acc)
  (if (= n 0)
      acc
      (loop (- n 1) (+ acc (compute)))))

(print (loop 500000 0))
