(define (mult x y) (if (< x 1) 0 (+ y (mult (sub1 x) y ))))

(define (factorial n) (if (< n 2) 1 (mult n (factorial (sub1 n)))))

(do
  (print (factorial 5))
  (print (factorial 4))
  (print (factorial 3)))