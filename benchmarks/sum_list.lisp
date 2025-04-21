(define (build-list n)
  (if (zero? n)
      ()
      (pair n (build-list (sub1 n)))))

(define (sum-list lst)
  (if (empty? lst)
      0
      (let ((head (left lst)))
        (let ((tail (right lst)))
          (+ head (sum-list tail))))))

(sum-list (build-list 500))