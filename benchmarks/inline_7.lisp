(define (grandparent a b)
    (parent (add1 a) (add1 b))
)

(define (parent a b)
    (leaf (+ a b))
)

(define (leaf x)
    (- x 7)
)

(define (addnine x)
    (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 x)))))))))
)

(define (addfive x)
    (add1 (add1 (add1 (add1 (add1 x)))))
)

(define (addthree x)
    (add1 (add1 (add1 x)))
)

(define (addtwo x)
    (add1 (add1 x))
)

(let ((x 5))
    (let ((y 3))
        (do
            (print (grandparent x y))
            (newline)
            (print (addnine x))
            (newline)
            (print (addfive x))
            (newline)
            (print (addthree x))
            (newline)
            (print (addtwo x))
        )
    )
)