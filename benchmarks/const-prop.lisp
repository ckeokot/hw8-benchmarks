(define (const-prop n acc)
  (if (zero? n)
      acc
      (const-prop (sub1 n) (+ acc (+ 2 3)))))

(const-prop 30000000 0)