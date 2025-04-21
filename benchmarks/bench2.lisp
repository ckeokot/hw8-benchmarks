(define (add2 n) (add1 (add1 n)))

(define (add5 n) (add2 (add2 (add1 n))))

(define (addTen n) (add5 (add5 n)))

(define (main) (do (print (addTen 0)) (newline)))

(main)