isPrime x
  | x < 2 = False
  | otherwise = not $ any (\y -> x `mod` y == 0) $ takeWhile (<= sqrtX) primes
  where
    sqrtX = floor $ sqrt $ fromIntegral x

primes = 2 : filter isPrime [3,5..]

main = print $ sum $ takeWhile (< 2000000) primes
