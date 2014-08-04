#!/usr/bin/env runhaskell

{-
 - If we list all the natural numbers below 10 that are multiples
 - of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is
 - 23.
 -
 - Find the sum of all the multiples of 3 or 5 below 1000.
 -}

prob1 = sum [i | i <- [0..999], i `mod` 3 == 0 || i `mod` 5 == 0]

-- 233168
main = print prob1
