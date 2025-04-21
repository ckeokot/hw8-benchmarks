(define (test)
  (let ((a 5))
    (let ((b 10))
      (let ((c 15))
        (let ((d 20))
          (+ (+ (+ (+ a b) (- c d)) (- (+ a b) (+ c d)))
             (- (- (+ a b) (- c d)) (+ (+ a b) (+ c d)))))))))

(test) 