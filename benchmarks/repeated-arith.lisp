(define (repeated-arith x)
  (+ (+ (+ x x) (+ x x))
     (+ (+ (+ x 2) (+ x 2)) (+ (+ x 2) (+ x 2)))))

(repeated-arith 10000)
