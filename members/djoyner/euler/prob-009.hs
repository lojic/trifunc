main = print $ product $ head ts
  where
    ts = [ [a,b,c] | a <- [1..996], b <- [1..997], a < b, let c = 1000 - a - b, b < c, a^2 + b^2 == c^2 ]
