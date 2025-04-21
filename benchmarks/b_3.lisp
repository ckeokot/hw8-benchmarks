(define (mul x y)
  (if (= y 0)
      0
      (+ x (mul x (- y 1)))))

(print (mul 3 4))