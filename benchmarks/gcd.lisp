(define (gcd a b)
  (if (= a b)
      a
      (if (< a b)
          (gcd a (- b a))
          (gcd (- a b) b))))

(do
  (print (gcd 48 18))
  (print (gcd 144 60))
  (print (gcd 42 7)))