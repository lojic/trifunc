#lang racket

;; Problem 2: https://projecteuler.net/problem=2

(define (fib n)
  (define (_fib i f1 f2)
    (cond  [(= i n) f2]
           [else (_fib (+ i 1) f2 (+ f1 f2))]))
  (cond [(= n 1) 1]
        [else (_fib 2 1 2)]))

(define (sum-even-fib max)
  (define (_f n sum)
    (let ([f (fib n)])
      (cond [(> f max) sum]
            [(even? f) (_f (+ n 1) (+ sum f))]
            [else (_f (+ n 1) sum)])))
  (_f 1 0))
