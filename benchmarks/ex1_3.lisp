(define (fib n) (if (< n 2) n (+ (fib (- n 1)) (fib (- n 2)))))
(do
  (print (fib 11))
  (newline)
  (print (fib 4))
  (newline)
  (print (fib 5))
  (newline)
  (print (fib 14))
  (newline)
  )
