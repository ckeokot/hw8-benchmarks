(define (increase1 x) (add1 x))

(let ((x1 (read-num)))
  (let ((x2 (read-num)))
    (print (+ (increase1 x1) (increase1 x2)))))