(define (sortedinsert n xs) (if (empty? xs) (pair n xs) (if (< n (left xs)) (pair n xs) (pair (left xs) (sortedinsert n (right xs))))))
(define (sort a) (if (empty? a) () (sortedinsert (left a) (sort (right a)))))
(print (sort (pair 10 (pair 9 (pair 8 (pair 7 (pair 6 (pair 5 (pair 4 (pair 3 (pair 2 (pair 1 ()))))))))))))