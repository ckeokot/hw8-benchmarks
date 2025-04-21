(define (subexpelim a b) 
    (+ (+ (- a (+ a (+ a (+ a b)))) (+ b (+ a (+ a (+ a b))))) (+ (- a (+ a (+ a (+ a b)))) (+ b (+ a (+ a (+ a b))))))
)

(define (bmark acc n c d) (if (= n 0) acc (bmark (+ acc (subexpelim c d)) (- n 1) c d)))

(print (bmark 0 10000 5 6))