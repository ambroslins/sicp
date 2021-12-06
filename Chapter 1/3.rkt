#lang racket

(require "common.rkt")

(define (sum-of-larger-squares a b c)
  (cond [(= a (min a b c)) (sum-of-squares b c)]
        [(= b (min a b c)) (sum-of-squares a c)]
        [else (sum-of-squares a b)]))

(sum-of-larger-squares 2 3 4)