(define (double x)
  (+ x x))
  
(define (increment x)
  (add1 x))

(define (add-three x)
  (add1 (add1 (add1 x))))
  
(define (compute-value n)
  (double (increment (add-three n))))

(define (run-inlining-loop n count)
  (if (= count 0)
      n
      (run-inlining-loop (compute-value n) (sub1 count))))

(print (run-inlining-loop 0 10000))