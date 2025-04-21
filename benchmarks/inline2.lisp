(define (double x)
  (+ x x))

(define (inc x)
  (+ x 1))

(define (main x)
  (inc (double 3)))

(print (main 0))