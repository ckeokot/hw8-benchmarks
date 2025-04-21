(define (f x) (if (= x 0) x (f (sub1 x))))

(f 50000000)
