-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(prod(x ::(Integer)))
  }

prod :: Integer -> Integer
prod x = prodaux(2*x)

prodaux :: Integer -> Integer
prodaux 1 = 3
prodaux x = (x^2 + 2*x) * (prodaux (x-1))
