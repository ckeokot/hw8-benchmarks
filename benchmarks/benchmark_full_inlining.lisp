(define (is-int-even n)
  (if (= n 0)
      1
      (is-int-odd (- n 1))))

(define (is-int-odd n)
  (if (= n 0)
      0
      (is-int-even (- n 1))))

(print (is-int-even 10000))
