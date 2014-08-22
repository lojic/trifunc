#lang racket

;; Problem 2a: https://projecteuler.net/problem=2 4613732

(define (sum-even-fibs max)
  (define (fibs f1 f2 sum max)
    (cond [(> f2 max) sum]
          [else (fibs f2 (+ f1 f2) (+ sum (if (even? f2) f2 0)) max)]))
  (fibs 1 2 0 max))

(sum-even-fibs 4000000)