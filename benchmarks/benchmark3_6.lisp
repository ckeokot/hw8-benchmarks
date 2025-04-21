(define (double x) (+ x x))
(define (quad   x) (double (double x)))
(define (oct    x) (quad (quad x)))

(print (oct 2))
