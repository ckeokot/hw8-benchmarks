(define (is-academic-weapon hell nah) 
    (if (< hell nah) 
        hell
    (is-academic-weapon (- hell nah) nah)
    )

)

(define (cs164-is-a-lot-of fun pain) 

    (if (= (is-academic-weapon fun pain) 0)
        fun
    pain
    )
)

(print (cs164-is-a-lot-of 164164164164164 10100100))


