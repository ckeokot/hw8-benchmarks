(define (badAddition a b)
  (if (zero? b)
      a
      (badAddition (add1 a) (sub1 b))
  )
)

(define (badMultiplication a b)
  (if (zero? b)
      0
      (badAddition a (badMultiplication a (sub1 b)))
  )
)

(define (badFactorial a)
    (if (zero? a)
        1
        (badMultiplication a (badFactorial (sub1 a)))
    )
)

(print (badFactorial 8))