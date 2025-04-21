(define (add a b) 
  (+ a b))

(define (inc a) 
  (add a 1))

(define (f x) 
  (let ((y (+ x 1)))
    (let ((z (+ y 2)))
      (+ x (+ y z)))))

(define (g x) 
  (let ((x (+ x 1)))
    (let ((y (+ x 2)))   
      (+ x y))))

(define (h x)
  (let ((y x))
    (let ((x (+ y 1)))
      (+ x y))))

(do
  (print (f 5))
  (print (g 10))
  (print (h 3))
  (print 
    (let ((x 1))
      (let ((y 2))
        (let ((x 3))
          (+ x y)))))
  (print 
    (let ((a 1))
      (let ((b (+ a 2)))
        (let ((a (+ b 3)))
          (+ a b)))))
  (print (inc (add 5 3)))
)