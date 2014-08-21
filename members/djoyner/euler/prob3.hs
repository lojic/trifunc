#!/usr/bin/env runhaskell

sieve x
  | x < 2     = []
  | otherwise = go [2..x]
  where
    go []     = []
    go (p:[]) = [p]
    go (p:ps) = p : go [ y | y <- ps, y `mod` p /= 0 ]

factors x = go x $ sieve x
  where
    go 1 _                         = []
    go v []                        = []
    go v q@(p:ps) | v `mod` p == 0 = p : go (v `div` p) q
    go v (_:ps)                    = go v ps

main = print $ last $ factors 600851475143
