-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(combinacionesMenoresOiguales(x ::(Integer)))
  }

combinacionesMenoresOiguales :: Integer -> Integer
combinacionesMenoresOiguales x = auxpaso x x x
  
auxpaso :: Integer -> Integer -> Integer -> Integer
auxpaso i j n | i==1 = auxsuma 1 j n 
              | otherwise = auxsuma i j n + auxpaso (i-1) j n


auxsuma :: Integer -> Integer -> Integer -> Integer 
auxsuma i j n | i==1 && j==1 = 1
              | j == 0 = 0
              | i * j <= n = 1 + auxsuma i (j-1) n
              | otherwise = 0  + auxsuma i (j-1) n 
