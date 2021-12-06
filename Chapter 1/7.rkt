#lang racket

(require "common.rkt")

(sqrt 1.0e-4)

(sqrt 1.0e36)

(define (better-good-enough? previous current)
  (< 0.999 (abs (/ previous current)) 1.001))

(define (better-sqrt-iter guess x)
  (let ([next-guess (improve guess x)])
    (if (better-good-enough? guess next-guess)
        next-guess
        (better-sqrt-iter next-guess x))))

(define (better-sqrt x)
  (better-sqrt-iter 1.0 x))

(better-sqrt 1.0e-4)

(better-sqrt 1.0e36)