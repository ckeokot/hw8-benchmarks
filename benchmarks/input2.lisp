(define (my-add x y)
  (+ x y))

(define (my-sub x y)
  (- x y))

(if (= (my-add 10 10) (my-sub 30 10))
    (print 1)
    (print 0))