(define (cse foo n acc)
  (if (zero? n)
      acc
      (let ((bar (+ foo foo)))
        (let ((baz (+ bar bar)))
          (cse foo (- n 1) (+ acc baz))))))

(print (cse 100 10000000 0))
