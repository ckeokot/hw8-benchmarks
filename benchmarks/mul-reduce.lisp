(define (mul a b)
    (if (zero? a)
        0
        (if (zero? b)
            0
            (if (< 0 b)
                (+ (mul a (sub1 b)) a)
                (mul (- 0 a) (- 0 b))
            )
        )
    )
)

(define (mul-reduce-internal acc xs)
    (if (empty? xs)
        acc
        (mul-reduce-internal
            (mul acc (left xs))
            (right xs)
        )
    )
)

(define (mul-reduce xs) (mul-reduce-internal 1 xs))

(let
    ((num-list
        (pair 3 (pair -3 (pair 17 (pair 64 (pair -32 (pair -8 ()))))))
    ))
    (print (mul-reduce num-list))
)
