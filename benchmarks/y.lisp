(define (add10 a) (if (empty? a) () (pair (+ (left a) (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 1)))))))))) (add10 (right a)))))
(print (add10 (pair 1 (pair 2 (pair 3 (pair 4 (pair 5 (pair 6 (pair 7 (pair 8 (pair 9 (pair 10 ()))))))))))))
