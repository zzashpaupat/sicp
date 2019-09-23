#lang scheme

(define (square a) (* a a))
(define (sum-two-max-squares a b c)
  (cond
    ((and (> a c) (> b c)) (+ (square a) (square b)))
    ((and (> a b) (> c b)) (+ (square a) (square b)))
    (else (+ (square b) (square c))))
)


; test

(sum-two-max-squares 5 6 7)