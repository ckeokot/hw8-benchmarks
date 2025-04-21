(define (generate-list n)
  (if (= n 0)
      ()
      (pair (- n 1) (generate-list (- n 1)))))

(define (sum-lists a b)
  (if (empty? a)
      ()
      (pair (+ (left a) (left b))
            (sum-lists (right a) (right b)))))

(print (sum-lists (generate-list 1000000) (generate-list 1000000)))
