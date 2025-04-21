(define (dec1 x) (- x 1))
(define (inc1 x) (add1 x))
(define (retval x) x)
(define (double x) (+ x x))
(define (multiply x n) (if (= n 0) 0 (+ x (multiply x (dec1 n)))))
(define (divide x n) (if (= n 0) 0 (- x (multiply x (dec1 n))))) 

(define (piconst) 314)
(define (otherconst) 69)
(define (base) 10)
(define (vvvvlarge) 1000)

(define (random x)
  (inc1 (double (inc1 (double (multiply x (piconst)))))))

(define (random2 x) 
  (if (= x (piconst))
    (random (multiply x (piconst)))
    (random (double (multiply x (piconst)))))) 

(define (add args)
  (if (empty? args)
      0
      (+ (left args) (add (right args)))))

(define (listconstructor depth val)
  (if (= depth 0)
      (pair val ()) 
      (pair (random val)
            (listconstructor (dec1 depth) (inc1 val)))))

(define (applyrandomtimes x acc)
  (if (= x 0)
      acc
      (let ((newacc (random2 acc)))
        (applyrandomtimes (dec1 x) newacc))))

(let ((x (vvvvlarge)))
  (let ((acc (base)))
    (let ((finalacc (applyrandomtimes x acc)))
      (let ((finallist (listconstructor (base) finalacc)))
        (print (add finallist))))))
