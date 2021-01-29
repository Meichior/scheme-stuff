#lang sicp
(define (square x)
  (* x x))

(define (abs x)
  (if (not (> x 0))
      x
      (- x)))

(define (average x y)
  (/ (+ x y) 2))

;; approximation racine carrée de newton      
(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))


  (define (good-enough? guess)
   (= (improve guess) guess)) 


  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  
  (sqrt-iter 1.0))

(sqrt 9)
(sqrt 256)
(sqrt 0)
