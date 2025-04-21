(define (inlineTest x y)
  (let ((temp (+ x y)))
    (+ temp 5)))
(do (inlineTest 10 15))