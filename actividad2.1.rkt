#lang racket

;toma grados en fahrenheit y transforma a celcius
(define (fahrenheit-to-celsius f)
    (/ (* (- f 32) 5) 9))


;regresa 1 si n es positivo, -1 si es negativo y 0 si n=0 
(define (sign n)
(if (> n 0) 
1
(if (< n 0)
-1
0
)))

;chicharronera
(define (roots a b c)
(/ (+ (- b) (sqrt (- (expt b 2) (* 4 a c))))
   (* 2 a))
)

;BMI falta
(define (bmi w h)
(
    / (w)
    (expt h 2)
)
)

;factorial recursivo
(define (factorial n)
(if( = n 0)
1
(* n (factorial (- n 1)))
)
)


