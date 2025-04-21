(define (countdown n)
  (if (< n 1)
      0
      (do
        (print n)
        (countdown (- n 1)))))

(countdown 5)
