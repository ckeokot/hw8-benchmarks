(define (lengthhelp lst prelen)
  (if (empty? lst)
      prelen
      (lengthhelp (right lst) (+ prelen 1))))

(define (length lst)
  (lengthhelp lst 0))

(define (reversehelp lst prelist)
  (if (empty? lst)
      prelist
      (reversehelp (right lst) (pair (left lst) prelist))))

(define (reverse lst)
  (reversehelp lst ()))

(define (slicehelp lst start cur)
  (if (= cur start)
      lst
      (if (empty? lst)
          ()
          (slicehelp (right lst) start (+ cur 1)))))

(define (slice lst start)
  (slicehelp lst start 0))

(define (addlist lst prelist len)
  (if (empty? lst)
      prelist
      (if (zero? len)
          prelist
          (addlist (right lst) (pair (left lst) prelist) (- len 1)))))

(define (mergehelp arr1 arr2 prelist len1 len2)
  (if (zero? len1)
      (addlist arr2 prelist len2)
      (if (zero? len2)
          (addlist arr1 prelist len1)
          (if (< (left arr1) (left arr2))
              (mergehelp (right arr1) arr2 (pair (left arr1) prelist) (- len1 1) len2)
              (mergehelp arr1 (right arr2) (pair (left arr2) prelist) len1 (- len2 1))))))

(define (mergegrouphelp arr ordersize prelist)
  (let ((arr1 (slice arr 0)))
    (let ((arr2 (slice arr ordersize)))
      (if (empty? arr2)
          (addlist arr prelist -1)
          (let ((arr3 (slice arr (+ ordersize ordersize))))
            (if (empty? arr3)
                (mergegrouphelp arr3 ordersize 
                  (mergehelp arr1 arr2 prelist ordersize (length arr2)))
                (mergegrouphelp arr3 ordersize 
                  (mergehelp arr1 arr2 prelist ordersize ordersize))))))))

(define (mergesort arr len ordersize)
  (if (< len ordersize)
      arr
      (let ((reversed (mergegrouphelp arr ordersize ())))
        (mergesort (reverse reversed) len (+ ordersize ordersize)))))

(define (sort arr)
  (let ((len (length arr)))
    (if (= len 0)
        arr
        (mergesort arr len 1))))

(define (outresult lst)
  (if (empty? lst)
      ()
      (do
        (print (left lst))
        (outresult (right lst)))))

(define (testlist) (pair 5 (pair 10 (pair 9 (pair 19 (pair 18 (pair 2 (pair 7 (pair 14 (pair 3 (pair 4 (pair 8 (pair 15 (pair 13 (pair 17 (pair 11 (pair 6 (pair 12 (pair 20 (pair 1 (pair 16 ())))))))))))))))))))))

(outresult (sort (testlist)))