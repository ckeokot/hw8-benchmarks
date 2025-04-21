(define (add5 x)
  (+ x 5))

(define (sub5 x)
  (- x 5))

(define (main x)
  (+ (+ (add5 5) (sub5 10)) (- (add5 5) (sub5 10))))

(print (main 0))