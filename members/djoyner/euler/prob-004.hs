palindromic x = xs == reverse xs
  where xs = show x

main = print $ maximum $ filter palindromic $ [ a * b | a <- [100..999], b <- [100..999] ]
