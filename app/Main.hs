module Main where

ints :: IO [Int]
ints = map read . words <$> getLine

charToString :: Char -> String
charToString c = [c]

charToInteger :: Char -> Int
charToInteger c = read (charToString c) :: Int

digitsSum :: Int -> Int
digitsSum x = sum (map charToInteger (show x))

main :: IO ()
main = do
  [n, a, b] <- ints
  print (sum (map (\v -> let s = digitsSum v in if a <= s && s <= b then v else 0) [1 .. n]))