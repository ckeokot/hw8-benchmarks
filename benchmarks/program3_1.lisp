(define (bigboy x y z) 
    (if (zero? 0)
        (+ x (+ y (+ z (add1 (sub1 (add1 9))))))
        (- x (- y z))))
(define (otherboy x y z) (bigboy (add1 x) (add1 y) (add1 z)))
(print (otherboy 1 2 3))