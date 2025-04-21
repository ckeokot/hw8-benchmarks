(define (build-chain n)
  (if (zero? n)
      0
      (let ((rest (build-chain (sub1 n))))
        (+ rest n))))   

(+ (build-chain 1000) 1)