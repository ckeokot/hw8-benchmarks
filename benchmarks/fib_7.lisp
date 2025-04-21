(define (fib n)
  (let ((two 2))
    (if (< n 2)
      n
      (let ((nminusone (sub1 n)))
        (let ((nminustwo (sub1 (sub1 n))))
          (let ((resone (fib nminusone)))
            (let ((restwo (fib nminustwo)))
              (let ((res (+ resone restwo)))
                (if (= 1 1)
                  res
                  0
                )
              )
            )
          )
        )
      )
    )
  )
)

(print (fib 27))