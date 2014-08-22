#!/usr/bin/env runhaskell

{-
 - The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 -
 - Find the sum of all the primes below two million.
 -}

prob10 = sum . takeWhile (< 2000000) $ primes

primes = 2 : filter isPrime [3, 5..]

isPrime n = not . any (\i -> n `mod` i == 0) . takeWhile (\i -> i*i <= n) $ primes

-- 142913828922
main = print prob10
