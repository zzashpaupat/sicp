#lang scheme

(define (even? n)
  (= (remainder n 2) 0))
(define (double a) (+ a a))
(define (halve a) (/ a 2))

(define (mul a b)
  (cond ((= b 0) 0)
        ((even? b) (double (mul a (halve b))))
        (else (+ a (mul a (- b 1))))))
        
; test
(mul 2 2)
(mul 5 3)
(mul 100 0)
(mul 53 1)
