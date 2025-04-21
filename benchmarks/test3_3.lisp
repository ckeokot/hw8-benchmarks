(define (loop-add a b n)
    (if (zero? n) 0 (+ (+ a b) (loop-add a b (- n 1)))))

(print (loop-add 3 7 100))