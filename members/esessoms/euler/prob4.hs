#!/usr/bin/env runhaskell

{-
 - A palindromic number reads the same both ways. The largest
 - palindrome made from the product of two 2-digit numbers is 9009 =
 - 91 × 99.
 -
 - Find the largest palindrome made from the product of two 3-digit
 - numbers.
 -}

prob4 = maximum $ [i*j | i <- [100..999], j <- [100..999], let s = show (i*j) in s == reverse s]

-- 906609
main = print prob4
