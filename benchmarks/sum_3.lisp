(define
  (sum n)
  (if (< n 1) 0 (+ n (sum (- n 1)))))

(sum 10)
