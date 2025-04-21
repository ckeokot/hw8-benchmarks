(define (trible x)
  (+ x (+ x x)))

(define (main x)
  (+ (trible 5) (trible 10)))

(print (main 0))