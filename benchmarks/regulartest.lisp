(define (regulartest n)
  (if (= n 0)
      0
      (+ n (regulartest (sub1 n)))
  )
)

(print (regulartest 20))