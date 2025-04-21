(define (inc x)
  (add1 x))

(define (two-inc x)
  (+ (inc x) (inc x)))

(print (two-inc 10))

