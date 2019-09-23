#lang scheme
(define (even? n)
  (= (remainder n 2) 0))
(define (double a) (+ a a))
(define (halve a) (/ a 2))

(define (mul a b)
  (define (mul-iter store a b) (
                            cond ((= b 0) store)
                                 ((even? b) (mul-iter store (double a) (halve b)))
                                 (else (mul-iter (+ store a) a (- b 1)))))
  (mul-iter 0 a b))

; test
(mul 2 2)
(mul 5 3)
(mul 100 0)
(mul 53 1)