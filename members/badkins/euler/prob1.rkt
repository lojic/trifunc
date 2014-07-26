#lang racket

;; Problem 1: https://projecteuler.net/problem=1

;; Solution 1
(define (sum-3-5 limit)
  ; Sum all multiples of 3 which are less than the limit
  (define (sum-3 n accum)
    (if (>= n limit) 
        accum
        (sum-3 (+ 3 n) (+ n accum))))
  ; Sum all multiples of 5 which are both less than
  ; the limit and not a multiple of 3
  (define (sum-5 n accum)
    (if (>= n limit)
        accum
        ; Exclude multiples of 5 that are also multiples of 3 since
        ; they will have been summed in the sum-3 function.
        (sum-5 (+ 5 n) 
               (+ (if (= 0 (remainder n 3)) 0 n) 
                  accum))))
  (+ (sum-3 3 0)
     (sum-5 5 0)))
  
(sum-3-5 1000)