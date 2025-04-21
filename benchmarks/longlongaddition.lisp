(define (addition x y)
    (if (zero? y)
        x
    (add1 (addition x (sub1 y)))))

(print (addition 5 2))