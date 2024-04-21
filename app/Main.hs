module Main where

import Control.Monad (replicateM)
import Data.List (nub)

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
  n <- readLn
  d <- replicateM n getLine
  print (length (nub d))
