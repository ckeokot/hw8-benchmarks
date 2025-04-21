(let ((bool true))
(do
    (print (not bool))
    (print bool)
    (if bool
        (print (add1 21))
        (print (sub1 21)))))