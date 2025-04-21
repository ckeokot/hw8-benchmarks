(define (add3 x) (+ 3 x))
(define (add4 y) (+ 4 y))

(print (+ (add3 4) (+ (add3 13) (+ (add4 22) (+ (add4 3333) (add4 (add3 (add3 (add3 (add3 (add3 (add3 (add3 29)))))))))))))