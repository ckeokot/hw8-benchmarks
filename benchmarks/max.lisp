(define (max-inner lst curr-max)
  (if (empty? lst)
    curr-max
    (let ((left-val (left lst)))
      (max-inner
        (right lst)
        (if (< curr-max left-val) left-val curr-max)))))

(define (max lst)
  (max-inner (right lst) (left lst)))

(define (make-lst len val)
  (if (zero? len)
    ()
    (pair val (make-lst (sub1 len) val))))

(do
  (print (max (pair 1 (pair 2 (pair 3 (pair 4 (pair 5 (pair 6 (pair 7 (pair 8 (pair 9 (pair 10 (pair 11 (pair 12 (pair 13 (pair 14 (pair 15 ())))))))))))))))))
  (newline)
  (print (max (pair 1 (pair 2 (pair 3 (pair 4 (pair 5 (pair 6 (pair 7 (pair 8 (pair 9 (pair 10 (pair 11 (pair 12 (pair 13 (pair 14 (pair 15 ())))))))))))))))))
  (newline)
  (print (max (pair 1 (pair 2 (pair 3 (pair 4 (pair 5 (pair 6 (pair 7 (pair 8 (pair 9 (pair 10 (pair 11 (pair 12 (pair 13 (pair 14 (pair 15 ())))))))))))))))))
  (newline)
  (print (max (pair 10 (pair 13 (pair 96 (pair 94 (pair 27 (pair 57 (pair 78 (pair 99 (pair 81 (pair 20 (pair 33 (pair 16 (pair 71 (pair 69 (pair 71 (pair 51 (pair 57 (pair 48 (pair 66 (pair 16 ()))))))))))))))))))))))
  (newline)
  (print (max (pair 9 (pair 18 (pair 79 (pair 96 (pair 27 (pair 60 (pair 40 (pair 49 (pair 91 (pair 54 (pair 64 (pair 5 (pair 13 (pair 81 (pair 91 (pair 5 (pair 6 (pair 95 (pair 100 (pair 59 (pair 9 (pair 98 (pair 71 (pair 54 (pair 25 (pair 82 (pair 98 (pair 46 (pair 73 (pair 21 (pair 22 (pair 97 (pair 59 (pair 95 (pair 53 (pair 71 (pair 56 (pair 67 (pair 57 (pair 97 (pair 0 (pair 72 (pair 52 (pair 58 (pair 74 (pair 19 (pair 68 (pair 92 (pair 39 (pair 78 (pair 0 (pair 94 (pair 0 (pair 99 (pair 1 (pair 72 (pair 83 (pair 56 (pair 20 (pair 14 (pair 59 (pair 26 (pair 67 (pair 77 (pair 61 (pair 70 (pair 52 (pair 93 (pair 43 (pair 50 (pair 25 (pair 98 (pair 21 (pair 50 (pair 10 (pair 96 (pair 39 (pair 99 (pair 59 (pair 48 (pair 79 (pair 50 (pair 54 (pair 48 (pair 69 (pair 60 (pair 69 (pair 74 (pair 98 (pair 68 (pair 85 (pair 67 (pair 35 (pair 100 (pair 65 (pair 52 (pair 94 (pair 91 (pair 93 (pair 37 ()))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  (newline)
  (print (max (make-lst 3000 1)))
  (newline)
  (print (max (make-lst 3000 1000)))
  (newline))
