(define (hanoi n source target auxiliary)
  (if (zero? n)
      0
      (+ 1 (+ (hanoi (- n 1) source auxiliary target)
              (hanoi (- n 1) auxiliary target source)))))

(print (hanoi 10 5 10 15))
