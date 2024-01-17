module Main where

main :: IO ()
main = do
  [a, b] <- ints
  putStrLn (if even (a * b) then "Even" else "Odd")

ints :: IO [Int]
ints = map read . words <$> getLine
