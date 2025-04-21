(define (subtraction x y)
    (if (zero? y)
        x
    (sub1 (subtraction x (sub1 y)))))

(do (print (subtraction 5 2)) (print (subtraction 5 2)) (print (subtraction 5 2)) (print (subtraction 5 2)) (print (subtraction 5 2)) (print (subtraction 5 2)))