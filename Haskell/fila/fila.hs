-- PLP 2018.2
-- Aluno: Thiago Santos de Moura - 116210967

somaLista :: [Int] -> [Int]
somaLista lista = [a | a <- lista, a >= 60] ++ [a | a <- lista, a < 60]

main :: IO()
main = do
    entrada <- getLine
    let lista = read entrada :: [Int]
    print (somaLista lista)