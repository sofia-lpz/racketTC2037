#lang racket
;1
;toma grados en fahrenheit y transforma a celcius
(define (fahrenheit-to-celsius f)
    (/ (* (- f 32) 5) 9))

;2
;regresa 1 si n es positivo, -1 si es negativo y 0 si n=0 
(define (sign n)
(if (> n 0) 
1
(if (< n 0)
-1
0
)))

;3
;chicharronera
(define (roots a b c)
(/ (+ (- b) (sqrt (- (expt b 2) (* 4 a c))))
   (* 2 a))
)

;4
;BMI falta
(define (bmi w h)
(
    / (w)
    (expt h 2)
)
)

;5
;factorial recursivo
(define (factorial n)
(if( = n 0)
1
(* n (factorial (- n 1)))
)
)

;6
;duplica los elementos de una lista
(define (duplicate l)
(if (null? l)
'()
(cons (car l) (cons (car l) (duplicate (cdr l)))
)
))

;7
;elevar a a potencia b
(define (pow a b)
(if (= b 0)
1
(* a (pow a (- b 1)))
)
)

;8
;fibonacci
(define (fib n)
(
    if (<= n 1)
    n
    ( + (fib (- n 1)) (fib (- n 2)))
)
)

;9
;mete en una lista cada elemento de una lista
(define (enlist l)
0
)

;10
;regresa los numeros positivos de la lista
(define (positives l)
  (if (null? l)
      '()
      (if (> (car l) 0)
          (cons (car l) (positives (cdr l)))
          (positives (cdr l))))
)

;11
;Suma elementos de una lista
(define (add-list l)
  (if (null? l)
      0
      (+ (car l) (add-list (cdr l)))
  )
)

;12
;toma una tupla y devuelve la tupla invertida
(define (invert-pairs t)
  (cons (cdr t) (car t))
)

;13
;devuelve verdadero si la lista tiene simbolos, falso si no
(
    define (list-of-symbols? l)
    (if (null? l)
    #t
    (if (symbol? (car l))
    (list-of-symbols? (cdr l))
    #f
    )
    )
)

;14
;devuelve producto punto de dos listas
(define (dot-product l1 l2)
  (if (null? l1)
      0
      (+ (* (car l1) (car l2)) (dot-product (cdr l1) (cdr l2)))
  )
)

;15
;promedio de una lista
(define (average l)
(
    if (null? l)
    0
    (
       (/ (add-list l) (length l))
    )
)
)

;16
;