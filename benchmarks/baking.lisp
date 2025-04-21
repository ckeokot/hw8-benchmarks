(define (preheat x) x)
(define (baketime x) (+ (preheat x) 10))
(define (totaltime x) (baketime (preheat x)))
(print (let ((oven 350)) (let ((bakemins (totaltime oven))) bakemins)))