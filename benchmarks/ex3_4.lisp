(define (mod a b)
  (if (< a b) a
      (mod (- a b) b)))

(define (fib n)
  (if (< n 2) n
      (+ (fib (- n 1)) (fib (- n 2)))))

(define (fibType n)
  (let ((f (fib n)))
    (if (= (mod f 2) 0)
        0
        1
    )))

(do
(print (fibType 5))
(newline)
(print (fibType 6))
)
