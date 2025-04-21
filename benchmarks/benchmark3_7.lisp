(define (f x y z) (+ x (+ y (+ z (+ z (+ z (+ z (+ z (+ z (+ z (+ z (+ z (+ z (+ z (+ z (+ z (+ z z)))))))))))))))))

(let ((x 2)) (let ((y 3)) (+ x (+ y (+ y (+ y (+ y (+ y (+ y (+ y (+ y (+ y (+ y (+ y (+ y (+ y (f y x 3)))))))))))))))))