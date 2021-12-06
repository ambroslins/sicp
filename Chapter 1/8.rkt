#lang racket

(require "common.rkt")

; from exercise 1.7
(define (good-enough? previous current)
  (< 0.999 (abs (/ previous current)) 1.001))

(define (improve y x)
  (/ (+ (/ x (square y)) (* 2 y))
     3))

(define (cube-root-iter guess x)
  (let ([next-guess (improve guess x)])
    (if (good-enough? guess next-guess)
        next-guess
        (cube-root-iter next-guess x))))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 27.0)

(cube-root 64.0)
