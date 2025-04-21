(do (let ((a (+ 2 3)))
      (if (< a 10)
          (let ((b (+ a 10))) b)
          (let ((c (+ a 20))) c))))