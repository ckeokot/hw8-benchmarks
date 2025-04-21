(define (main n v1 v2)
  (if (= n 0)
      (let ((x (left v1)))
        (let ((y (left v2)))
          (pair (+ x y) ())))
      (let ((x (left v1)))
        (let ((y (left v2)))
          (let ((z (+ x y)))
            (pair z (main (- n 1) (right v1) (right v2))))))))


(define (create-pair n val)
  (if (= n 0)
      (pair val ())
      (pair val (create-pair (- n 1) val))))

(let ((firstpair (create-pair 5 10))) 
  (let ((secondpair (create-pair 5 15))) 
    (main 5 firstpair secondpair)))