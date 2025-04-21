(define (double x) (+ x x))
(define (inc x) (add1 x))
(define (min x y) (if (< x y) x y))

(define (test1 x)
  (if (< x 10) (double (+ x x)) (inc (double x)))
)

(define (test2)
  (let ((x (double 3))) (let ((y (inc 2)))
    (if (= (min x y) x) (min (double 3) (inc 2)) (test1 x))
  ))
)

(define (loop n)
  (if (= n 0)
      0
      (do
        (print (test1 2))
        (print (test1 11))
        (print (test2))
        (loop (- n 1))
      )))

(loop 1000)
