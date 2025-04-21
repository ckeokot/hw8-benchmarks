(define (constant-one) (- (+ 10 (+ 9 (+ 8 (+ 7 (+ 6 (+ 5 (+ 4 (+ 3 (+ 2 1))))))))) (+ 10 (+ 9 (+ 8 (+ 7 (+ 6 (+ 5 (+ 4 (+ 3 2))))))))))

(define (constant-ten) (+ (constant-one) (+ (constant-one) (+ (constant-one) (+ (constant-one) (+ (constant-one) (+ (constant-one) (+ (constant-one) (+ (constant-one) (+ (constant-one) (+ (constant-one) 0)))))))))))

(define (constant-hundred) (+ (constant-ten) (+ (constant-ten) (+ (constant-ten) (+ (constant-ten) (+ (constant-ten) (+ (constant-ten) (+ (constant-ten) (+ (constant-ten) (+ (constant-ten) (+ (constant-ten) 0)))))))))))

(define (constant-thousand) (+ (constant-hundred) (+ (constant-hundred) (+ (constant-hundred) (+ (constant-hundred) (+ (constant-hundred) (+ (constant-hundred) (+ (constant-hundred) (+ (constant-hundred) (+ (constant-hundred) (+ (constant-hundred) 0)))))))))))

(define (constant-ten-thousand) (+ (constant-thousand) (+ (constant-thousand) (+ (constant-thousand) (+ (constant-thousand) (+ (constant-thousand) (+ (constant-thousand) (+ (constant-thousand) (+ (constant-thousand) (+ (constant-thousand) (+ (constant-thousand) 0)))))))))))

(define (constant-hundred-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) (+ (constant-ten-thousand) 0)))))))))))

(define (constant-million) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) (+ (constant-hundred-thousand) 0)))))))))))

(define (constant-ten-million) (+ (constant-million) (+ (constant-million) (+ (constant-million) (+ (constant-million) (+ (constant-million) (+ (constant-million) (+ (constant-million) (+ (constant-million) (+ (constant-million) (+ (constant-million) 0)))))))))))

(define (constant-millions) (+ 0 (+ 0 (+ 0 (+ 0 (+ 0 (+ 0 (+ (constant-ten-million) (+ (constant-ten-million) 0)))))))))

(print (constant-millions))