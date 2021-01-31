#lang scheme

;; On peut implémenter pas mal de nos choses nous même en scheme, ce qui en fait un langage très ludique à utiliser
;; L'opérateur de comparaison >= n'existe pas par exemple, mais on peut l'implémenter nous même!
;; (define (>= x y)
;;    (if (x < y)
;;      false
;;    true))
;; le langage peut être étendu très facilement, selon les besoins et envies du développeur !


(define (<= x y)
    (cond [(not (> x y)) true]
          [else false]
    )
)


(define (>= x y)
    (cond  [(not (< x y)) true]
           [else false]
    )
)


(define (++ x)
    (+ x 1)
)

(define (-- x)
    (- x 1)
)


(define (abs x)
    (cond [(x < 0) (- x)]
           [else x]
    )
)


(define (**-iter x y count)
    (cond [(= count y) x]
          [else (**-iter (* x x) y (+ count 1))]
    )
)


(define (** x y)
    (**-iter x y 1)
)

(define (while condition body)
    (cond [(condition) (body)]
          [else (while condition body)]
    )
)


(define (for condition body count)
    (cond [(condition) (body)]
          [ else (for condition body count)]
    )
)


;; On ne peut pas passer de prédicats aux procédure while et for, en principe ça marcherait 
;  mais je ne ais pas comment passer outre cettre restriction
;
; (while (< x max) 
;     (++ x))

; (for (< y max)
;      (+ y x)
;      (++ y))
