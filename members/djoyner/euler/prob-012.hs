tris = scanl (+) 1 [2..]

factors x = go 1
  where
    go a
       | x `mod` a == 0 = let b = x `div` a
                          in case a `compare` b of
                            LT -> a : b : (go $ a + 1)
                            EQ -> [a]
                            GT -> []
       | otherwise      = go $ a + 1

main = print $ head $ filter (\x -> (length $ factors x) > 500) tris
