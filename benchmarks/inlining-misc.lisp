(define (f1 x) (+ x 10))
(define (f2 x) (- x 5))
(define (f3 x) (+ x (- 2 (+ x (+ x 1)))))

(define (runtimes n val)
  (let 
    ((result
      (let ((a (f1 val)))
        (let ((b (f2 a)))
          (let ((c (f3 b)))
            (let ((d (f1 c)))
              (let ((e (f2 d)))
                  (let ((f (f3 e)))
                    (+ f 1)))))))))
    (if (zero? n)
      result
      (runtimes (sub1 n) result))))

(do
  (print (runtimes 1000 5))
  (newline))
