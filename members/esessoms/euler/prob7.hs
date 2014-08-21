#!/usr/bin/env runhaskell

{-
 - By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
 - we can see that the 6th prime is 13.
 -
 - What is the 10 001st prime number?
 -}

prob7 = primes !! 10000

primes = 2 : filter isPrime [3, 5..]

isPrime n = not . any (\i -> n `mod` i == 0) . takeWhile (\i -> i*i <= n) $ primes

-- 104743
main = print prob7
