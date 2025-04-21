(define (double x) (+ x x))

(define (map-sum lst)
  (if (empty? lst)
      0
      (+ (double (left lst)) (map-sum (right lst)))
  )
)

(print
  (map-sum 
  (pair 1 (pair 2 (pair 3 (pair 4 (pair 5 (pair 6 (pair 7 (pair 8 (pair 9 ())))))))))
  )
)
