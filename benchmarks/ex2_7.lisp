(define (add x) (+ x (+ x (+ x (+ x x)))))

(define (numbers n)
  (if (= n 0) 0
  (+ (add n) (numbers (- n 1)))))

  (print (numbers 10000))