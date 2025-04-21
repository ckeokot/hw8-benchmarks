(define (f x y) (if (= x y) (if (= 5 10) (print (add1 5)) (print (add1 7))) (if (= -1 1) (print (add1 -1))(print (add1 11)))))
(print (pair (f (+ 11 -1) (add1 9)) (f 9 8)))
