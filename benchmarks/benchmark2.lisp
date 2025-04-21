(define (printlist lst)
  (if (empty? lst)
    true
    (do
      (print (left lst))
      (printlist (right lst)))))

(printlist (pair 3 (pair 2 (pair 1 ()))))