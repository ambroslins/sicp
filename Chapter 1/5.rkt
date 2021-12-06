#lang racket

(define (p) (error "applicative-order"))

(define (test x y)
  (if (= x 0)
      0
      y))

; normal-order would evalute to '0'
(test 0 (p))