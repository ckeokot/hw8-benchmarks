(define (arith x)
  (+ x (+ 3 (+ 9 (- x (+ (add1 3) (- (+ (- 2 (sub1 3)) 34) (+ 2 (add1 5)))))))))

(define (bool x)
  (do
    (= 3 4)
    (= x 4)
    (= 3 3)
    (= 2 3)
    (< 2 3)
    (< x 3)
))

(define (names)
  (let ((a 5))
    (let ((b (add1 a)))
      (let ((c (+ b 4)))
        (- (+ c a)
               b)))))

(define (mixed)
  (let ((x 5)) (let ((y 10))
                 (+ (add1 x) (if (< x y) 4 (- y 3)))
   ))
)

(define (loop n)
  (if (= n 0)
      0
      (do
        (print (arith 3))
        (print (bool 3))
        (print (names))
        (print (mixed))
        (loop (- n 1))
      )))

(loop 1000)
