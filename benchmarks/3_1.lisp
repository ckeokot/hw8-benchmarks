(define (add-seventeen x)
  (+ x 17))

(define (sub-twenty-three x)
  (- x 23))

(define (add-ninety-one x)
  (+ x 91))

(define (sub-forty-seven x)
  (- x 47))

(define (process-level1 x)
  (let ((a (add-seventeen x)))
    (let ((b (sub-twenty-three a)))
      (let ((c (add-ninety-one b)))
        (sub-forty-seven c)))))

(define (process-level2 x)
  (let ((a (sub-forty-seven x)))
    (let ((b (add-ninety-one a)))
      (let ((c (sub-twenty-three b)))
        (add-seventeen c)))))

(define (process-level3 x)
  (let ((a (add-ninety-one x)))
    (let ((b (sub-twenty-three a)))
      (let ((c (add-seventeen b)))
        (sub-forty-seven c)))))

(define (main)
  (let ((v1 (process-level1 127)))
    (let ((v2 (process-level2 v1)))
      (let ((v3 (process-level3 v2)))
        (let ((v4 (process-level1 v3)))
          (let ((v5 (process-level2 v4)))
            (let ((v6 (process-level3 v5)))
              (let ((v7 (process-level1 v6)))
                (let ((v8 (process-level2 v7)))
                  (let ((v9 (process-level3 v8)))
                    (print v9)))))))))))

(main) 