-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaPrimerosNImpares(x ::(Integer)))
  }

sumaPrimerosNImpares :: Integer -> Integer
sumaPrimerosNImpares x = aux1 (2*x-1) 

aux1 :: Integer -> Integer
aux1 1 = 4
aux1 x | mod x 2 ==0 = 0 + aux1 (x-1)
       | otherwise = 2*x+2 + aux1 (x-1)



