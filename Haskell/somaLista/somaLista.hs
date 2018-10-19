somaLista :: [Integer] -> Integer
somaLista [] = 0
somaLista [x] = x
somaLista (x:xs) = x + somaLista xs

main :: IO()
main = do
    entrada <- getLine
    let lista = read entrada
    putStrLn( show( somaLista lista) )