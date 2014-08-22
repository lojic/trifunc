#!/usr/bin/env runhaskell

isPrime x
  | x < 2 = False
  | otherwise = not $ any (\y -> x `mod` y == 0) $ takeWhile (<= sqrtX) primes
  where
    sqrtX = floor $ sqrt $ fromIntegral x

primes = 2 : filter isPrime [3,5..]

factors x = go x $ takeWhile (<= x) primes
  where
    go 1 _                         = []
    go v []                        = []
    go v q@(p:ps) | v `mod` p == 0 = p : go (v `div` p) q
    go v (_:ps)                    = go v ps

main = print $ last $ factors 600851475143
