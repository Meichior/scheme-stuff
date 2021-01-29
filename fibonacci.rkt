#lang sicp
;; Suite de Fibonacci avec process iteratif (bien que la syntaxe peut suggérer autrement)

(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b)
                a
                (- count 1))))

(fib 9)
(fib 3)
(fib 512)