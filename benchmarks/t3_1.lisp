(define (simple x) (+ x 1))

(define (t3 x)
    (let ((y (simple x)))
        (let ((z (simple y)))
            (let ((w (simple z)))
                (simple w)
            )
        )
    ))

(define (t32 x) (add1 (add1 x)))

(define (rec x)
    (if (= x 0) 0 (+ x (rec (- x 1)))))

(define (reca x)
    (if (= x 0) 0 (add1 (reca (- x 1)))))

(define (recb x)
    (if (= x 0) 0 (add1 (reca (- x 1)))))

(do
    (print (t3 1))
    (print (t32 1))
    (print (rec 100))
    (print (+ (do (print 3) 4) (do (print 5) 6)))
    (print (reca 100))
)

