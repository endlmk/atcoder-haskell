module Main where

import Data.List (stripPrefix)
import Data.Maybe (listToMaybe, mapMaybe)

ints :: IO [Int]
ints = map read . words <$> getLine

solve :: String -> Bool
solve [] = True
solve s = maybe False solve (listToMaybe (mapMaybe (`stripPrefix` s) revwords))
  where
    revwords = map reverse ["dream", "dreamer", "erase", "eraser"]

main :: IO ()
main = do
  s <- getLine
  putStrLn (if solve (reverse s) then "YES" else "NO")
