(define (exp2 n)
  (if (< n 1)
      1
      (+ (exp2 (sub1 n))  
         (exp2 (sub1 n))))) 
(print (exp2 15))