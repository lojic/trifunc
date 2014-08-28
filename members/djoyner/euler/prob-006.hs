main = print $ sqSum - sumSqs
  where
    sqSum = (sum [1..n])^2
    sumSqs = sum $ take n [ x^2 | x <- [1..] ]
    n = 100
