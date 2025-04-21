(define (multiply x y)
  (if (zero? y)
      0
      (+ x (multiply x (sub1 y)))))

(define (factorial n)
  (if (zero? n)
      1
      (multiply n (factorial (sub1 n)))))

(do (+ (factorial 4) (+ (factorial 3) (+ (factorial 2) (+ (factorial 1) (factorial 1))))))