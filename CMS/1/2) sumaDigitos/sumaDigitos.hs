-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaDigitos(x ::(Int)))
  }

sumaDigitos :: Int -> Int
sumaDigitos 0 = 0
sumaDigitos x = mod x 10 + sumaDigitos (div x 10)