(define (fib n)
  (if (< n 2)
    n
    (let ((fib1 (fib (- n 1))))
    (let ((fib2 (fib (- n 2))))
      (+ fib1 fib2)))))

(do
  (print (fib 35))
  (newline))
