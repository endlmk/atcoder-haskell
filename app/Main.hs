module Main where

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
  [n, y] <- ints
  let ans = filter (\(m, g, s) -> m * 10000 + g * 5000 + s * 1000 == y) [(m, g, n - m - g) | m <- [0 .. n], g <- [0 .. n - m]]
  let (m, g, s) = if null ans then (-1, -1, -1) else head ans
  putStrLn (unwords (map show [m, g, s]))
