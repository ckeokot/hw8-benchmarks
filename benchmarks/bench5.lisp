(define (isFalseU U) (if U (isFalseU (not U)) false))

(define (isTrueU U) (if U (not (isFalseU U)) (isTrueU (not U))))

(define (main) (do (isTrueU false) (newline)))

(main)