#lang racket

;; Problem 3: https://projecteuler.net/problem=3 6857

(require math/number-theory)

(define (largest-prime n)
  (last (prime-divisors n)))