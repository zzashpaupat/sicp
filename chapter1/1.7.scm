#lang scheme

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- guess (improve guess))) 0.0001))
  (define (improve guess) 
    (/ (+ guess (/ x guess)) 2))
  (define (sqrt-iter guess) 
    (if (good-enough? guess) guess 
        (sqrt-iter (improve guess))))
  
  (sqrt-iter 1.0))
; test

(sqrt 2)
(sqrt 4)
(sqrt 9.9)
