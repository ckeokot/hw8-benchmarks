(define (isEven n)
  (if (zero? n)
      (print true)
      (isOdd (- n 1))))

(define (isOdd n)
  (if (zero? n)
      (print false)
      (isEven (- n 1))))

(isOdd 111111)