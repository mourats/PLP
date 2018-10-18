ehpoetica :: [Char] -> [Char] -> Char
ehpoetica palavra1 palavra2
| ((head palavra1) == (head palavra2)) && ((tail palavra1) == (tail palavra2)) = 'S'
| otherwise = 'N'

main = do  
  input1 <- getLine
  input2 <- getLine
  let retorno = ehpoetica (map (:[]) input1) (map (:[]) input2)
  print retorno
