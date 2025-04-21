(define (inc x)
  (add1 x))

(define (sum-inc n acc)
  (if (zero? n)
      acc
      (sum-inc (sub1 n) (inc acc))))

(sum-inc 30000000 0)