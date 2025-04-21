(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (double x)
  (+ x x))

(define (add3 x)
  (+ x 3))

(define (combo x)
  (double (add3 (inc x))))

(print (combo 4))