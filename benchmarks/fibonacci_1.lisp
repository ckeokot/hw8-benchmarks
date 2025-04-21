(define (fibonacci n)
  (if (< n 2)
      n
      (+ (fibonacci (sub1 n)) 
         (fibonacci (sub1 (sub1 n))))))

(define (run-fibonacci-benchmark iterations n)
  (if (= iterations 0)
      0
      (let ((result (fibonacci n)))
        (let ((remaining (sub1 iterations)))
          (+ result (run-fibonacci-benchmark remaining n))))))

(let ((iterations (read-num)))
  (let ((n (read-num)))
    (print (run-fibonacci-benchmark iterations n))))