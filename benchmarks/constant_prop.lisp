(define (adding-constants x)
  (+ (+ 10 20) (+ (+ 5 5) (+ x (+ 30 40)))))

(define (conditional-constants)
  (if (= (+ 5 5) 10)
      (+ (+ 1 2) (+ 3 4))
      (+ 100 200)))

(define (run-loop n)
  (if (= n 0)
      0
      (let ((result (+ (adding-constants 50) (conditional-constants))))
        (+ result (run-loop (sub1 n))))))

(print (run-loop 10000))