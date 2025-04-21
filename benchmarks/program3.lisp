(define (f x y) (pair x (pair y (pair x (pair y ())))))
(define (fib n)
  (if (< n 2)
      n
      (+ (fib (- n 1)) (fib (- n 2)))))

(let ((x (fib 10))) 
    (let ((y (+ 12 (- 3 (+ 8 (- 3 (+ 2 (- 7 (+ 2 9)))))))))
        (+ (left (f x y)) (left (right (right (f x y)))) )
    )
)
