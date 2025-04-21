(define (f x) (+ 3 x))
(define (sum-f n total)
  (if (zero? n)
    total
    (sum-f (sub1 n) (+ (f n) total))))
(print (sum-f (read-num) 0))