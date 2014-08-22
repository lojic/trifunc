#!/usr/bin/env runhaskell

{-
 - A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 -
 - a2 + b2 = c2
 - For example, 32 + 42 = 9 + 16 = 25 = 52.
 -
 - There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 - Find the product abc.
 -}

prob9 = head [a*b*(1000-a-b) | a <- [1..998], b <- [1..999-a], let c = 1000-a-b in c > 0 && a^2 + b^2 == c^2]

-- 31875000
main = print prob9
