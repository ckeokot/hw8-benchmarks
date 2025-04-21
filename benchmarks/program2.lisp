(define (f x y) (pair x (pair y (pair x (pair y ())))))
(define (h lst) (+ 6 (left (right lst))))
(define (terrible i j)(- (+ (h (f i 3)) (h (f j j))) (h (f i 3))))
(- (terrible 4 5) (terrible 8 2))
