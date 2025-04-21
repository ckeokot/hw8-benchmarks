(define (f cnt) (if (zero? cnt) 0 (let ((a 1)) (let ((b a)) (let ((c (g 200))) (+ (f (- cnt 1)) (+ (+ a (+ b c) ) c)))))))
(define (g cnt) (if (zero? cnt) 0 (let ((a 1)) (let ((b a)) (let ((c b)) (+ (g (- cnt 1)) (+ (+ a (+ b c) ) c)))))))
(print (f 50000))