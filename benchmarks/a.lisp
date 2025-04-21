
(define (add-constants x)
  (let ((a (+ 3 4)))
    (let ((b (+ a 5)))
      (let ((c (+ b 6)))
        (+ x c)))))

(define (main)
  (let ((result (add-constants 10)))
    (print result)))

(main)