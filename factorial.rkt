#lang sicp
;; renvoie la factorielle d'un nombre donnée, prosses iteratif et non récursif (bien que la syntaxe peut en suggérer autrement)
;; En principe ce n'est pas si différent d'un boucle (tant que count < max et count incrémenté à chaque iteration)
(define (factorial n)
  (factor-iter 1 1 n))

(define (factor-iter product count max)
  (if (> count max)
      product
      (factor-iter (* product count)
                   (+ count 1)
                    max)
    )
)



(factorial 6)
(factorial 12)
(factorial 2)
(factorial 80)