module Main where

import Data.Char (digitToInt)

main :: IO ()
main = do
  chars <- getLine
  let nums = map digitToInt chars
  print (sum nums)
