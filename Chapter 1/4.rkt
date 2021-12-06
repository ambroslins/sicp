#lang racket

; if b is greater than 0 the if expression evaluates to +
; => (+ a b) = a + b
; otherwise the if expression evaluates to -
; => (- a b) = a - b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 4 3)
(a-plus-abs-b 4 -3)