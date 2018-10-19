ehpoetica :: [Char] -> [Char] -> Char
ehpoetica array1 array2
    | (palavra1) == (palavra2) = 'S'
    | otherwise = 'N'
    where 
        palavra1 = map (:[]) array1
        palavra2 = map (:[]) array2

main :: IO()
main = do  
    input1 <- getLine
    input2 <- getLine
    let retorno = ehpoetica (read input1) (read input2)
    print retorno
