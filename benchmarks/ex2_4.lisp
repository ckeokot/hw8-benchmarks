(define (mod a b)
  (if (< a b) a
      (mod (- a b) b)))

(define (divides? a b)
  (if (= (mod b a) 0) 1 0))

(define (hasDivisor n d)
  (if (= d n) 0
      (if (= (divides? d n) 1) 1
          (hasDivisor n (+ d 1)))))

(define (isPrime n)
  (if (< n 2) 0
      (if (= (hasDivisor n 2) 0) 1 0)))

(do
(print (isPrime 1))
(newline)
(print (isPrime 2))
(newline)
(print (isPrime 15))
(newline)
(print (isPrime 17))
)
