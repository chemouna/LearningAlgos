module PythagorianTriples where

-- The task is to determine how many Pythagorean triples there are with
-- a perimeter no larger than 100 and the number of these that are primitive.

-- Deal with large values.   Can your program handle a maximum perimeter of 1,000,000?
-- What about 10,000,000?   100,000,000?

pytr :: Int -> [(Bool, Int, Int, Int)]
pytr n = [(gcd a b == 1, a, b, c) |
      a <- [1..n],
      b <- [1..n],
      c <- [1..n],
      a < b && b < c, a^2 + b^2 == c^2, a+b+c <= n]

nbTriples :: Int -> Int
nbTriples limit = length $ pytr limit

nbPrimitives :: Int -> Int
nbPrimitives limit = sum $ map (\(x, _, _,_) -> if x then 1 else 0) $ pytr limit

