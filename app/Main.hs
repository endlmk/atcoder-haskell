module Main where

import Data.List (sortBy, unfoldr)

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
  _ <- getLine
  a <- ints
  let ordered = sortBy (flip compare) a
  let alice = sum [x | (x, i) <- zip ordered [1 ..], odd i]
  let bob = sum [x | (x, i) <- zip ordered [1 ..], even i]
  print (alice - bob)
