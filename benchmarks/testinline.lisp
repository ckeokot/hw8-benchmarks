(define (add1 x)
  (+ x 1))

(define (double x)
  (+ x x))

(define (add2 x)
  (add1 (add1 x)))

(define (complex x)
  (let ((y (+ x 1)))
    (let ((z (+ y 2)))
      (let ((w (+ z 3)))
        (+ x (+ y (+ z w)))))))

(define (even n)
  (if (= n 0)
      1
      (odd (- n 1))))

(define (odd n)
  (if (= n 0)
      0
      (even (- n 1))))

(do
  (print (add1 5))
  
  (print (add2 10))
  
  (print (double (add1 3)))
  
  (print 
    (let ((x (add1 5)))
      (double x)))
      
  (print 
    (let ((x (add2 (double 3))))
      (add1 x)))
      
  (print (complex 5))
  
  (print 
    (let ((x (add1 (complex 3))))
      (double x)))
      
  (print (even 5))
  
  (print (odd 4))
  
  (print
    (if (= (add1 4) 5)
        (double 3)
        (add2 2)))
        
  (print
    (let ((x (add1 5)))
      (let ((y (double x)))
        (let ((z (add2 y)))
          (+ x (+ y z))))))
)