#lang scheme

(define (cube-sqrt x)
  (define (good-enough? guess)
    (< (abs (- guess (improve guess))) 0.0001))
  (define (improve guess)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
  (define (iter guess)
    (if (good-enough? guess) guess
        (iter (improve guess))))
  (iter 1.0))

; test

(cube-sqrt 27)
(cube-sqrt 8)
(cube-sqrt 256)