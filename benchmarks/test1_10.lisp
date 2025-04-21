(define (f x y) 
    (if (< x y)
        (+ x (+ (add1 4) (+ (+ 1 (sub1 4)) y)))
        (add1 x)))

(let ((x 5))
  (let ((y 10))
    (print (f y x))))