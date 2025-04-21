(define (add1 x)
  (+ x 1))

(define (sub1 x)
  (- x 1))

(define (double x)
  (+ x x))

(define (add x y)
  (+ x y))

(define (compute a b c)
  (add (double (add1 a)) 
       (add (sub1 b) (double c))))

(define (test)
  (compute 5 10 15))

(test) 