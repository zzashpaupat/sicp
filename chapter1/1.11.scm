#lang scheme

(define (frec n)
  (if (< n 3) n
    (+
      (frec (- n 1))
      (* 2 (frec (- n 2)))
      (* 3 (frec (- n 3)))
    )
  )
)

(define (fiter n)
  (define (it a b c count)
    (if (= count 0) a
      (it b c (+ c (* 2 b) (* 3 a)) (- count 1)))
  )
  (if (< n 3) n
    (it 0 1 2 n)
  )
)

; test
(frec 1)
(fiter 1)
(frec 2)
(fiter 2)
(frec 3)
(fiter 3)
(frec 4)
(fiter 4)
(frec 5)
(fiter 5)