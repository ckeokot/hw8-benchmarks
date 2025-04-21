(define (mod a b)
  (if (< a b)
      a
      (mod (- a b) b)))

(define (prime n i)
  (if (< n 2)
      false
      (if (= i 1)
          true
          (if (= (mod n i) 0)
              false
              (prime n (sub1 i))))))

(define (count n)
  (if (= n 0)
      0
      (if (prime n (sub1 n))
          (add1 (count (sub1 n)))
          (count (sub1 n)))))

(print (count 100))
