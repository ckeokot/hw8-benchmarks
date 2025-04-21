(define (sub5 x)
    (- x 5))

(define (add10 x)
    (+ x 10))

(define (add x)
    (+ x x))

(define (sub x)
    (- x x))

(define (all x)
    (sub (add (add10 (sub5 x)))))

(define (loop i acc c)
    (if (= i c)
        acc 
        (loop (add1 i) (+ acc (all i)) c)))

(define (run)
    (let ((i 0))
        (let ((c 10000000))
            (loop i 0 c))))

(run)



