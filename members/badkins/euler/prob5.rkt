#lang racket

;; Problem 5: https://projecteuler.net/problem=5

(foldl lcm 1 (range 2 21)) ; => 232792560