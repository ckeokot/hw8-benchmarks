(define (mul a b)
  (if (= b 0)
      0
      (+ a (mul a (- b 1)))))

(define (power x y)
  (if (= y 0)
      1
      (mul x (power x (- y 1)))))


(power 2 8)
