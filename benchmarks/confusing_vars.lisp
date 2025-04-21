(define (confuse x y) (+ x y))

(let ((one 1))
  (let ((two 2))
    (let ((oneone 2))
      (let ((twotwo 1))
        (print 
          (confuse 
            (confuse one oneone)
            (confuse two twotwo)
          )
        )
      )
    )
  )
)