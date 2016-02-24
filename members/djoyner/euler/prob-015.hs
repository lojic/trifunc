import Data.Function.Memoize (memoize)

type Point = (Int, Int)

moves :: Point -> Point -> [Point]
moves (gx,gy) (x,y) = right ++ down
  where
    right | x < gx    = [(x+1,y)]
          | otherwise = []
    down  | y < gy    = [(x,y+1)]
          | otherwise = []

paths :: Point -> Int
paths g = 1 + go (0,0)
  where
    go = memoize $
         \p -> let ps = moves g p
                   new = max 0 $ length ps - 1
               in new + sum (map go ps)

main :: IO ()
main = print $ paths (20,20)
