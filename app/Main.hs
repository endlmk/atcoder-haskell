module Main where

f x = if even x then 1 + f (x `div` 2) else 0

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
  n <- getLine
  a <- ints
  print $ minimum $ map f a
