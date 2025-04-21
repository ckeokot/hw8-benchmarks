(define (length lst)
  (if (empty? lst)
      0
      (add1 (length (right lst)))))

(print (length(pair 1 (pair 2 (pair 3 (pair 4 ()))))))
