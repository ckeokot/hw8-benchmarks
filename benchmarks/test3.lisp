(define (factor-positive n k) (if (= n 0) true (if (< n 0) false (factor-positive (- n k) k)))) (print (factor-positive 405 13))
