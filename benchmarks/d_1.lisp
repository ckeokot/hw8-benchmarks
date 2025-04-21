(define (f n) (if (= n 1) 1 (if (= n 2) 1 (+ (f (- n 1)) (f (- n 2))))))
(print (f (f 5)))
