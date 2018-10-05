-- PLP 2018.2
-- Aluno: Thiago Santos de Moura - 116210967

isPrime k = null [ x | x <- [2..k - 1], k `mod`x  == 0]

allPrimosMod :: Int -> Int -> Int
allPrimosMod x y
  | x == 0 = 0
  | isPrime (mod x (10 ^ y)) = 1 + allPrimosMod x (y+1)
  | (mod x (10 ^ y)) == (mod x (10 ^ (y+1))) = allPrimosDiv x (y-1)
  | otherwise = allPrimosMod x (y+1)


allPrimosDiv :: Int -> Int -> Int
allPrimosDiv x y
  | x == 0 || y == 0 = 0
  | isPrime (x `div` (10 ^ y)) = 1 + allPrimosDiv x (y-1)
  | y == 1 = 0
  | otherwise = allPrimosDiv x (y-1)

main = do

  input <- getLine
  
  let num = read input
  
  let primos = allPrimosMod num 1
  print primos

