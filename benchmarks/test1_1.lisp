(define (fib-tail n a b)
  (if (= n 0)
      a
      (fib-tail (- n 1) b (+ a b))))

(define (fib n)
  (fib-tail n 0 1))

(do
  (print (fib 4))
  (newline)
  (print (fib (read-num))))