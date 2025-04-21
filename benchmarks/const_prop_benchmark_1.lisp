(define (const-heavy x)
  (let ((a (+ 10 5)))
    (let ((b (+ a 20)))
      (let ((c (- b 15)))
        (if (< c 25)
            (+ (+ x a) b)
            (+ (+ x c) 100))))))

(const-heavy (read-num))