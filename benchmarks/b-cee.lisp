
(define (mult x y)
  (if (= y 0)
      0
      (+ x (mult x (sub1 y)))))

(do (print (mult (mult 5 8) (mult (mult 4 2) (mult 5 8)))) (print (mult 4 2)))