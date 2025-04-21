(define (f a b)
    (
        let ((c a))
        (
            let ((a 2))
            (
                let ((d a))
                (
                    let ((e b))
                    (+
                        c
                        (+
                            a
                            (+
                                d
                                (+
                                    b
                                    e
                                )
                            )
                        )
                    ) 
                )
            )
        )
    )
)
(define (g a b)
    (
        if 
        (zero? a)
        b
        (g (sub1 a) (+ b (f 1 (add1 3))))
    )
)
(print(g 5000000 0))