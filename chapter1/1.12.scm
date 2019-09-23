#lang scheme 
(define (pascal row col)
  (cond
    ((= col 1) 1)
    ((= col row) 1)
    (else (+ (pascal (- row 1) col) (pascal (- row 1) (- col 1))))
  )
)

; test

(pascal 6 3)
(pascal 20 10)