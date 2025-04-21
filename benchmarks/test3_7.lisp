(define (fact-iter n acc)
  (if (= n 0)
      acc
      (fact-iter (- n 1) (+ n acc))))

(print 
  (let ((x 5))
    (fact-iter x 0)))
