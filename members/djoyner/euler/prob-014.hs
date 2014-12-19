import Data.Function (on)
import Data.Function.Memoize (memoize)
import Data.List (maximumBy)

-- Return the length of the Collatz sequence starting at n
-- See also: http://xkcd.com/710/
collatz :: Int -> Int
collatz = memoize f
  where f n | n == 1    = 1
            | even n    = 1 + collatz (n `div` 2)
            | otherwise = 1 + collatz (3*n + 1)

main :: IO ()
main = print $ maximumBy (compare `on` collatz) [1 .. 999999]
