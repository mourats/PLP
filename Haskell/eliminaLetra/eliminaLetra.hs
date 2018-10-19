-- PLP 2018.2
-- Aluno: Thiago Santos de Moura - 116210967

eliminaLetras :: String -> String -> String
eliminaLetras palavra letra = [x | x <- palavra, [x] /= letra]

main = do
    letra <- getLine
    palavra <- getLine
    let result = eliminaLetras palavra letra
    putStrLn (result)