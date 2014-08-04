#!/usr/bin/env runhaskell

{-
 - The prime factors of 13195 are 5, 7, 13 and 29.
 -
 - What is the largest prime factor of the number 600851475143?
 -}

prob3 = maximum . factors $ 600851475143

factors n = filter (\i -> n `mod` i == 0) . takeWhile (\i -> i*i <= n) $ primes

primes = 2 : filter isPrime [3, 5..]

isPrime = null . factors

-- 6857
main = print prob3
