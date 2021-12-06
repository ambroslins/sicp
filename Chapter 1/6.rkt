#lang racket

(require "common.rkt")

(define (new-if predicate then-clause else-clause)
  (cond [predicate then-clause]
        [else else-clause]))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
; the 'sqrt' program with the 'new-if' procedure will loop forever
; because the 'new-if' procedure evaluates using applicative-order
; while the special form 'if' uses normal-order
