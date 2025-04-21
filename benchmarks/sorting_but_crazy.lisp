
(define (gen-list-by start k) (if (zero? start) () (pair start (gen-list-by (- start k) k))))

(define (even? n) (if (< n 0) false (if (= n 0) true (even? (- n 2)))))

(define (sort-filter ns) 
    (if (empty? ns)
        ()
        (if (even? (left ns))
            (sort-filter (right ns))
            (sorted-insert (left ns) (sort-filter (right ns)))
        )
    )
)

(define (sorted-insert i xs)
    (if (empty? xs)
        (pair i ())
        (if (< i (left xs))
            (pair i xs)
            (pair (left xs) (sorted-insert i (right xs)))
        )
    )
)

(print (sort-filter (gen-list-by 100 1)))