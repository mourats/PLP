is_prime :: Int -> Bool
is_prime 1 = False
is_prime 2 = True
is_prime n 
    | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
	| otherwise = True


main = do
    input <- getLine
    let num = read input
    let primos = is_prime num
    print primos