sumList :: [Int] -> Int
sumList [] = 0
sumList (a:as) = a + sumList as

concatenaX :: String -> IO()
concatenaX l = do 
	a <- getLine 
	if a == "fim" then putStrLn (l) 
	else concatenaX (l ++ a)
	
main = do
	entrada <- getLine
	putStrLn (entrada)
	concatenaX []