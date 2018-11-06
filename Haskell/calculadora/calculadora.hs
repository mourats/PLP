-- PLP 2018.2
-- Aluno: Thiago Santos de Moura - 116210967

calculadora :: [Char] -> Int -> Int -> Int
calculadora op v1 v2
    | op == "*" = v1 * v2
    | op == "/" = v1 `div` v2
    | op == "-" = v1 - v2
    | op == "+" = v1 + v2
    | otherwise = 0

main :: IO()
main = do
    v1 <- getLine
    op <- getLine
    v2 <- getLine
    print (calculadora op (read v1) (read v2))