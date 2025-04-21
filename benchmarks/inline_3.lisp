(define (double x)
  (+ x x))

(define (loop n acc)
  (if (= n 0)
      acc
      (loop (- n 1) (+ acc (double 10)))))

(print (loop 500000 0))
