(define (sum-to x) (if (= x 0) 0 (+ x (sum-to (sub1 x))))) (let ((x (read-num))) (+ (sum-to x) (sum-to x) ))

