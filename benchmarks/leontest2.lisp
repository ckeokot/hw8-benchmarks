(define (build d)
  (if (zero? d)
      ()
      (pair (build (sub1 d)) (build (sub1 d)))))

(define (depth t)
  (if (empty? t)
      0
      (add1 (max (depth (left t)) (depth (right t))))))

(define (max a b)
  (if (< a b) b a))

(print (depth (build 12)))
