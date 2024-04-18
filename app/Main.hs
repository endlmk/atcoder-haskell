module Main where

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
  a <- getLine
  let anum = read a :: Integer
  b <- getLine
  let bnum = read b :: Integer
  c <- getLine
  let cnum = read c :: Integer
  x <- getLine
  let xnum = read x :: Integer
  let pairs = [(na, nb, nc) | na <- [0 .. anum], nb <- [0 .. bnum], nc <- [0 .. cnum]]
  print (sum (map (\(a1, b1, c1) -> if (500 * a1 + 100 * b1 + 50 * c1) == xnum then 1 else 0) pairs))
