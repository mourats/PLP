soma :: Int -> Int -> Int
soma a b = a + b

main :: IO ()
main = do
  a <- getLine
  b <- getLine
  putStrLn(show ((soma (read a) (read b))))