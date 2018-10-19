-- PLP 2018.2
-- Aluno: Thiago Santos de Moura - 116210967

ocorrencia :: [Char] -> [Char] -> [Char] -> [Char]
ocorrencia result (a:as) letra
    | [a] == letra = result ++ [a] ++ (inverteLista as)
    | otherwise = ocorrencia (result ++ [a]) as letra

inverteLista :: [Char] -> [Char]
inverteLista [] = []
inverteLista (a:as) = inverteLista as ++ [a]

main :: IO()
main = do
    letra <- getLine
    entrada <- getLine
    putStrLn (ocorrencia [] entrada letra)