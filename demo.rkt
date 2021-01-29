#lang sicp 

;; On peut implémenter pas mal de nos choses nous même en scheme, ce qui en fait un langage très ludique à utiliser
;; L'opérateur de comparaison >= n'existe pas par exemple, mais on peut l'implémenter nous même!
;; (define (>= x y)
;;    (if (x < y)
;;      false
;;    true))
;; le langage peut être étendu très facilement, selon les besoins et envies du développeur !

(define (++ x)
    (+ x 1))

(define (-- x)
    (- x 1))


(define x 2)
(define y 1)
(define max 3)

(++ 2)
(-- 3)
(++ x)


(define (while condition body)
    (if (condition)
         ((body) (while condition body))

    ))

(define (for condition body count)
    (if (condition)
        ((body) (for condition body count)

        )))


;; On ne peut pas passer de prédicats aux procédure while et for, en principe ça marcherait 
;  mais je ne ais pas comment passer outre cettre restriction
;
; (while (< x max) 
;     (++ x))

; (for (< y max)
;      (+ y x)
;      (++ y))
