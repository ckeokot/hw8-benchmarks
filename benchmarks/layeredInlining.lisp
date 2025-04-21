(define (a n)
  (if (< n 1)
      n
      (b (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 n)))))))))))))))))))))))))))))))))))))))))))))

(define (b n)
  (if (< n 1)
      n
      (c (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 n)))))))))))))))))))))))))))))))))))))))))))))

(define (c n)
  (if (< n 1)
      n
      (d (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 n)))))))))))))))))))))))))))))))))))))))))))))

(define (d n)
  (if (< n 1)
      n
      (e (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 n)))))))))))))))))))))))))))))))))))))))))))))

(define (e n)
  (if (< n 1)
      n
      (a (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 n)))))))))))))))))))))))))))))))))))))))))))))

(print (a 5000000))