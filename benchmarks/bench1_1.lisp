(define (repeat) 
    (let ((a 10))
       (let ((b 20)) 
            (let ((c 30))
                (let ((d (+ a b)))  
                    (let ((e (+ b c)))
                        (let ((f (+ d e)))
                            (- f e))))))))

(define (loop i acc c)
    (if (= i c)
        acc 
        (loop (add1 i) (+ acc (repeat)) c)))

(define (run)
    (let ((i 0))
        (let ((c 10000000))
            (loop i 0 c))))

(run)

        