(define (f x y) (+ x (+ (add1 4) (+ (+ 1 (sub1 4)) y))))

(let ((x 12))
  (let ((y 13))
    (print (f y x))))