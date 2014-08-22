#lang racket

;; Problem 2a: https://projecteuler.net/problem=3 6857

(require math/number-theory)

(define (largest-prime n)
  (last (prime-divisors n)))