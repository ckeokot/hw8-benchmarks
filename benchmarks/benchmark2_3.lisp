(define (inc x) (add1 x))

(define (loop i acc n)
  (if (< i n)
      (loop (add1 i) (inc acc) n)
      acc))
(print (loop 0 0 50000))