(define (generate-list n)
  (if (= n 0)
      ()
      (pair (- n 1) (generate-list (- n 1)))))

(define (copy-list n val)
  (if (= n 0)
      ()
      (pair val (copy-list (- n 1) val))))

(define (sum-each a b)
  (if (empty? b)
      ()
      (pair (+ a (left b))
            (sum-each a (right b)))))

(define (sum-pairwise a b)
  (if (empty? a)
      ()
      (append (sum-each (left a) b)
              (sum-pairwise (right a) b))))

(define (append a b)
  (if (empty? a)
      b
      (pair (left a) (append (right a) b))))

(print (sum-pairwise (generate-list 1000) (generate-list 1000)))
