(define (redundant x)
    (if (= (+ x 2) 2) (+ (+ x 2) (+ x 2)) (+ (+ (+ x 2) (+ x 2)) (+ (+ x 2) (+ x 2))))
)

(let ((x (read-num)))
    (print (redundant x))
)