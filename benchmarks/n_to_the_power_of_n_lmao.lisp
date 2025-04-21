(define (helper n e nLeft)
  (if (zero? nLeft)
      (pair e ())
      (if (zero? n)
          e
          (pair (helper (- n 1) e n) (helper n e (- nLeft 1)))))
)

(define (makeNDimensionalList n e)
  (if (zero? n)
      ()
      (helper n e n))
)

(print (makeNDimensionalList 4 10))