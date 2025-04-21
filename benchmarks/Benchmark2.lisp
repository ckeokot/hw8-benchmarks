(define (fib n)
  (if (< n 2)
      n
      (+ (fib (sub1 n)) (fib (- n 2)))))

(print (fib 14))
