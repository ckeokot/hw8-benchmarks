(define (add2 x)
  (add1 (add1 x)))

(define (add5 x)
  (+ 2 (add2 x)))

(define (nested n acc)
  (if (zero? n)
      acc
      (nested (sub1 n) (add5 acc))))

(nested 30000000 0)