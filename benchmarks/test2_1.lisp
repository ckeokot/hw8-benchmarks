(define (sorted-insert n xs)
  (if (empty? xs)
      (pair n ())
      (if (< n (left xs))
          (pair n xs)
          (pair (left xs) (sorted-insert n (right xs))))))

(define (sort xs)
  (if (empty? xs)
      ()
      (sorted-insert (left xs) (sort (right xs)))))

(do
  (print (sort (pair 3 (pair 1 (pair 2 ()))))))