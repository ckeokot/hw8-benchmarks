
(define (sortedinsert n xs) (let ((x n)) (let ((y x)) (let ((z y)) (if (empty? xs) (pair z xs) (if (< n (left xs)) (pair z xs) (pair (left xs) (sortedinsert z (right xs)))))))))
(define (sort a) (let ((x a)) (let ((y x)) (let ((z y)) (if (empty? z) () (sortedinsert (left z) (sort (right z))))))))
(print (sort (pair 10 (pair 9 (pair 8 (pair 7 (pair 6 (pair 5 (pair 4 (pair 3 (pair 2 (pair 1 ()))))))))))))

