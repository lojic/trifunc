#lang racket

(require srfi/13) ; for string-reverse

;; Problem 4: https://projecteuler.net/problem=4 906609

(define (palindromic? n)
  (let ([str (number->string n)])
    (string=? str (string-reverse str))))

(define result 0)
(define factors '())

(for* ([a (range 100 1000)]
       [b (range a 1000)])
  (let ([p (* a b)])
    (when (and (> p result) (palindromic? p))
      (set! result p)
      (set! factors (list a b)))))

(display (cons result factors)) ; => (906609 913 993)
