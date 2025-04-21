(define (fib a b i n) 
    (if (= i n) () (pair a (fib b (+ a b) (add1 i) n)))
)

(print (fib 0 1 0 5))
