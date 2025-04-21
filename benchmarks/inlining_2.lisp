(define (add10 x) (+ x 10))
(define (add1-outer x) (add1-inner x))
(define (add1-inner x) (+ x 1))

(define (inlining n acc)
  (if (zero? n)
      acc
      (inlining (- n 1) (+ acc (add10 (add1-outer 0))))))

(print (inlining 10000000 0))
