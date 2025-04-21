(define (make-list n)
  (if (= n 0)
      ()
      (pair n (make-list (sub1 n)))))

(define (list-sum lst)
  (if (empty? lst)
      0
      (+ (left lst) (list-sum (right lst)))))

(define (list-map-add lst increment)
  (if (empty? lst)
      ()
      (pair (+ (left lst) increment) 
            (list-map-add (right lst) increment))))

(define (run-list-benchmark n iterations)
  (if (= iterations 0)
      0
      (let ((lst (make-list n)))
        (let ((sum (list-sum lst)))
          (let ((mapped (list-map-add lst 5)))
            (let ((mapped-sum (list-sum mapped)))
              (let ((remaining (sub1 iterations)))
                (+ (+ sum mapped-sum) 
                   (run-list-benchmark n remaining)))))))))

(let ((size (read-num)))
  (let ((iterations (read-num)))
    (print (run-list-benchmark size iterations))))