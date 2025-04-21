(define (simple)
  (let ((a 1))
    (let ((b 2))
      (let ((c 3))
        (let ((d 4))
          (let ((x (+ a b)))
            (let ((y (+ c d)))
              (let ((xx (+ a b)))
                (let ((yy (+ c d)))
                  (let ((z (+ (+ a b) (+ c d))))
                    (let ((zz (+ (+ a b) (+ c d))))
                      (+ z
                            (+ zz
                                  (+ x yy))))))))))))))

(define (loop n)
  (if (= n 0)
      0
      (do
        (print (simple))
        (loop (- n 1))
      )))

(loop 1000)
