import Data.Bits (shiftL)

powerDigitSum :: Int -> Int
powerDigitSum n = go $ 1 `shiftL` n
  where
    go :: Integer -> Int
    go x | x /= 0    = fromIntegral (x `mod` 10) + go (x `div` 10)
         | otherwise = 0

main :: IO ()
main = print $ powerDigitSum 1000
