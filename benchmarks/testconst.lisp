(do
  (print (+ 1 2))
  (print (- 8 3))
  (print (- 4 5))
  
  (print (add1 5))
  (print (sub1 10))
  
  (print (- (+ (read-num) 5) (- 4 2)))
  
  (print (+ (- 2 3) (- 8 (+ 1 2))))
  
  (print (= (+ 2 3) 5))
  (print (< (- 10 5) (+ 3 3)))
  
  (print (pair 1 (+ 2 3)))
  (print (pair? (pair 1 2)))
  (print (pair? 1))
  
  (print (zero? (- 1 1)))
  (print (zero? ()))
  (print (num? (+ 2 3)))
  (print (num? ()))
  
  (print (left (pair (- 2 3) (+ 4 5))))
  (print (right (pair (- 8 3) (- 2 2))))
  
  (print (not (= 1 (+ 0 1))))
  
  (print 
    (-
      (+ (read-num) (- 10 5))
      (- (- 2 3) (sub1 5))
    )
  )

  (print (if (< 2 3) 1 2))
  (print (if (= (+ 1 2) 3) (- 2 3) (+ 4 5)))
  (print (if (zero? 0) (+ 1 2) (- 4 2)))
  
  (print (if (< (read-num) 5) 1 2))
  (print (if (= (read-num) (+ 2 3)) (- 2 3) (+ 4 5)))

  (print (let ((x 5)) (+ x 3)))
  (print (let ((x (+ 2 3))) (- x 2)))
  (print (let ((x (- 2 3)))
               (let ((y (- 8 5)))
           (+ x y))))

  (print (let ((x (read-num)))
               (let ((y (+ 2 3)))
                          (- x y))))
           
  (print 
    (let ((x (+ 2 3)))
          (let ((y (- 3 4)))
      (if (< x y) 
          (+ x y) 
          (- x y)))))

  (print 
    (let ((x (+ 2 3)))
          (let ((y (- x 2)))
      (+ x y))))
)
