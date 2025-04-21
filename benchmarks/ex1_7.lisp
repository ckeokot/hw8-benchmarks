(define (numbers n)
  (if (= n 0) 0
  (+ n (numbers (- n 1)))))

(print (numbers 10000))