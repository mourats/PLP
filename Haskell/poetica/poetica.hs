saoPoeticas :: IO()
saoPoeticas = do
	a <- getLine
	b <- getLine
	if head a == head b && last a == last b then putStrLn ("S")
	else putStrLn ("N")

main = do
	saoPoeticas