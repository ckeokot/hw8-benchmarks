(define (costly)
    (+ 123456 (+ 12345 (+ 1234 (+ 123 (+ 987654 (+ 98765 (+ 9876 (- 987 98))))))))
)


(define (numbers n count)
  (if (= n 0) count
  (numbers (- n 1) (+ count (costly)))))

(print (numbers 400000 0))