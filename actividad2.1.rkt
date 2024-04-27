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
;BMI
(define (bmi w h)
    (if (< (/ w (* h h)) 20)
    "underweight"
    (if (and (>= (/ w (* h h)) 20) (< (/ w (* h h)) 25))
    "normal"
    (if (and (>= (/ w (* h h)) 25) (< (/ w (* h h)) 30))
    "obese1"
    (if (and (>= (/ w (* h h)) 30) (< (/ w (* h h)) 40))
    "obese2"
    (if (>= (/ w (* h h)) 40)
    "obese3"
    "invalido"
    )))))
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
(define( enlist l)
  (if (null? l)
      '()
      (cons (list(car l)) (enlist(cdr l)))))

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
      (+ (car l) (add-list (cdr l)))))

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
;devuelve una ueva lista en la que cada ocurrencia de a se 
;itnercambia por b y viceversa



;15
;devuelve producto punto de dos listas
(define (dot-product l1 l2)
  (if (null? l1)
      0
      (+ (* (car l1) (car l2)) (dot-product (cdr l1) (cdr l2)))
  )
)

;16
;promedio de una lista
(define (average l)
  (if (null? l)
      0
      (/ (add-list l) (length l))))

;17
;desviacion estandar
(define (square-difference x avg)
  (expt (- x avg) 2))

(define (map-square-difference lst avg)
  (if (null? lst)
      '()
      (cons (square-difference (car lst) avg)
            (map-square-difference (cdr lst) avg))))

(define (standard-deviation lst)
  (if (null? lst)
      0
      (let ((avg (average lst))
            (squared-diffs (map-square-difference lst (average lst))))
        (sqrt (/ (add-list squared-diffs) (length lst))))))



;18
;replicar n veces los elementos de una lista
(define (replic n lst)
  (if (or (null? lst) (= n 0))
    '()
    (
      append (make-list n (car lst)) (replic n (cdr lst))
    )
  )
)

;19
;expande elementos una lista n+1 

(define (expand lst)
  (if (null? lst)
      '()
      (expand-aux lst 1)))

(define (expand-aux lst count)
  (if (null? lst)
      '()
      (append (make-list count (car lst))
              (expand-aux (cdr lst) (add1 count)))))

;20
;regresa el numero en binario
(define (binary n)
  (if (= n 0)
      '()
      (append (binary (quotient n 2)) (list (remainder n 2)))))