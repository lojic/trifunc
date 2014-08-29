import Data.List (group)

tris = scanl (+) 1 [2..]

isPrime :: Int -> Bool
isPrime x
  | x < 2 = False
  | otherwise = not $ any (\y -> x `mod` y == 0) $ takeWhile (<= sqrtX) primes
  where
    sqrtX = floor $ sqrt $ fromIntegral x

primes = 2 : filter isPrime [3,5..]

primeFactors x = go x $ takeWhile (<= x) primes
  where
    go 1 _                         = []
    go v []                        = []
    go v q@(p:ps) | v `mod` p == 0 = p : go (v `div` p) q
    go v (_:ps)                    = go v ps

-- ref: http://gmatclub.com/forum/math-number-theory-88376.html ("Finding the Number of Factors of an Integer")
numFactors = product . map (+1) . map length . group . primeFactors

main = print $ head $ filter (\x -> numFactors x > 500) tris
