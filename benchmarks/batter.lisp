(define (stir x) (+ x 100))
(define (roll x) (stir (stir x)))
(define (pour x) (roll (roll x)))
(print (let ((batter 5)) (let ((pouredonce (pour batter))) (let ((pouredtwice (pour batter))) (+ pouredonce pouredtwice)))))