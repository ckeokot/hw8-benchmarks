(define (sumdown x acc)
  (if (zero? x)
      acc
      (sumdown (- x 1) (+ acc x)))) 

(let ((x (read-num)))
  (print (sumdown x 0)))