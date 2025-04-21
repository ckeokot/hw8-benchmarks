(define (lst n) 
    (if (= n 0) () (pair n (lst (sub1 n))))
)

(let ((x 5)) (print (lst x)))
