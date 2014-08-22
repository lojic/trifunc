#!/usr/bin/env runhaskell

main = print $ foldl lcm 1 [1..20]
