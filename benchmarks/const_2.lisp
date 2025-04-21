(define (repeatconstprop n)
  (if (= n 0)
      0
      (let ((x (+ 1 (+ 2 (+ 3 (+ 4 (+ 5 (+ 6 7))))))))
        (+ x (repeatconstprop (- n 1))))))

(print (repeatconstprop 500000))
