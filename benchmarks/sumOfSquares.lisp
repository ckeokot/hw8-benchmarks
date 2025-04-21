(define (mult x y)
  (if (< x 1)
      0
      (+ y (mult (sub1 x) y))))

(define (sum-of-squares n)
  (if (< n 1)
      0
      (+ (mult n n)
         (sum-of-squares (sub1 n)))))

(do
  (print (sum-of-squares 10))
  (print (sum-of-squares 20))
  (print (sum-of-squares 30)))