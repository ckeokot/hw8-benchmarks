(define (dot a b)
  (if (empty? a)
      0
      (+ (+ (left a) (left b)) (dot (right a) (right b)))))

(print
  (dot
    (pair 1 (pair 2 (pair 3 (pair 4 (pair 5 (pair 6 (pair 7 (pair 8 (pair 9 ())))))))))
    (pair 9 (pair 8 (pair 7 (pair 6 (pair 5 (pair 4 (pair 3 (pair 2 (pair 1 ())))))))))
  )
)

