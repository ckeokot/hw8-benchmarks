(define (f1 x) (add1 x))
(define (f2 x) (f1 (add1 x)))
(define (f3 x) (f2 (add1 x)))
(define (f4 x) (f3 (add1 x)))
(define (f5 x) (f4 (add1 x)))

(print (f5 0))
