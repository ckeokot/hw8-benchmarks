(define (sumto n)
  (if (< n 1)
    n
    (+ n (sumto (- n 1)))))

(print (sumto 1000))
