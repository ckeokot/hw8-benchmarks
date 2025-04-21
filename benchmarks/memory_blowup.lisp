(define (generate-list n)
  (if (= n 0)
      ()
      (pair (- n 1) (generate-list (- n 1)))))

(define (generate-filled-list n value)
  (if (= n 0)
      ()
      (pair value (generate-filled-list (- n 1) value))))

(define (sum-lists a b)
  (if (empty? a)
      ()
      (pair (+ (left a) (left b))
            (sum-lists (right a) (right b)))))

(print (sum-lists (generate-filled-list 1000000 (generate-list 1000000)) (generate-filled-list 1000000 (generate-list 1000000))))
