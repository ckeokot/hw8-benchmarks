(define (modulo a b)
    (if (< b 1)
        -1
        (if (< a 1)
            -1
            (if (< a b)
                a
                (if (= a b)
                    0
                    (modulo 
                        (- a b)
                        b
                    )
                )
            )
        )
    )
)

(print
	(do
		(modulo 3282 2980)
		(modulo 120 2234)
		(modulo 6274 1343)
		(modulo 5051 8722)
		(modulo 6158 1524)
		(modulo 9710 518)
		(modulo 1406 6892)
		(modulo 2487 381)
		(modulo 4047 9278)
		(modulo 3788 9525)
		(modulo 7574 2105)
		(modulo 913 1328)
		(modulo 9547 9270)
		(modulo 8075 5977)
		(modulo 463 9614)
		(modulo 8910 2052)
		(modulo 3835 4105)
		(modulo 3822 2648)
		(modulo 3159 8816)
		(modulo 3705 1547)
		(modulo 5393 5476)
		(modulo 3963 6016)
		(modulo 7653 6456)
		(modulo 4832 1557)
		(modulo 8392 9177)
		(modulo 8037 4354)
		(modulo 5443 9296)
		(modulo 9007 684)
		(modulo 3230 1704)
		(modulo 9744 7392)
		(modulo 8826 2465)
		(modulo 5917 7892)
		(modulo 7111 9024)
		(modulo 3727 4996)
		(modulo 2155 6680)
		(modulo 6843 2267)
		(modulo 729 4869)
		(modulo 2553 6742)
		(modulo 8319 68)
		(modulo 680 2617)
		(modulo 8416 2959)
		(modulo 1825 5556)
		(modulo 974 6506)
		(modulo 5145 2362)
		(modulo 8283 4129)
		(modulo 4349 9043)
		(modulo 2048 649)
		(modulo 149 9964)
		(modulo 2473 1176)
		(modulo 9504 6358)
		(modulo 9387 1600)
		(modulo 3296 2511)
		(modulo 622 8819)
		(modulo 3407 4908)
		(modulo 2913 5431)
		(modulo 5056 587)
		(modulo 106 5699)
		(modulo 6827 4711)
		(modulo 7249 6818)
		(modulo 3704 3252)
		(modulo 2745 6804)
		(modulo 6741 2598)
		(modulo 599 9933)
		(modulo 8874 3296)
		(modulo 4426 8503)
		(modulo 963 4839)
		(modulo 6386 2893)
		(modulo 4622 6084)
		(modulo 1070 4751)
		(modulo 1882 1408)
		(modulo 607 9896)
		(modulo 1585 2426)
		(modulo 8836 4249)
		(modulo 9416 2282)
		(modulo 5860 7137)
		(modulo 5629 6380)
		(modulo 5803 4295)
		(modulo 1304 7299)
		(modulo 7077 3548)
		(modulo 8293 4526)
		(modulo 2362 8400)
		(modulo 9360 4235)
		(modulo 3637 9318)
		(modulo 2914 2152)
		(modulo 8546 5183)
		(modulo 6217 7668)
		(modulo 968 1373)
		(modulo 2175 7803)
		(modulo 2633 6327)
		(modulo 7102 2971)
		(modulo 1465 3916)
		(modulo 9239 1899)
		(modulo 2209 3884)
		(modulo 8007 574)
		(modulo 5212 7039)
		(modulo 3411 424)
		(modulo 2654 7201)
		(modulo 4872 673)
		(modulo 9168 4128)
		(modulo 2376 4368)
	)
)