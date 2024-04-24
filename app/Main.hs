module Main where

import Control.Monad (replicateM)

ints :: IO [Int]
ints = map read . words <$> getLine

diff :: [[Int]] -> Bool
diff [_] = True
diff ([t0, x0, y0] : xs) =
  rem >= 0 && even rem && diff xs
  where
    rem = ((t1 - t0) - (abs (x1 - x0) + abs (y1 - y0)))
    [t1, x1, y1] = head xs

main :: IO ()
main = do
  n <- readLn
  p <- replicateM n ints
  let t = [0, 0, 0] : p
  putStrLn (if diff t then "Yes" else "No")
