(define (even n)
  (if (zero? n)
      true
      (odd (sub1 n))))

(define (odd n)
  (if (zero? n)
      false
      (even (sub1 n))))

(do
  (print (even 114514))
  (newline)
  (print (odd 114514))
  (newline))
