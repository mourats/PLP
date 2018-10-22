saoPoeticas :: IO()
saoPoeticas = do
	x <- getLine
	y <- getLine
	if head x == head y && last x == last y then putStrLn ("S")
	else putStrLn ("N")

main = do
	saoPoeticas
