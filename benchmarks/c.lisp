(define (calculate x y)
  (let ((a (+ x y)))
    (let ((b (+ x y)))  
      (let ((c (+ x y))) 
        (+ (+ a b) c)))))

(define (main)
  (let ((result (calculate 10 20)))
    (print result)))

(main)