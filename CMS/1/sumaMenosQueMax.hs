-- No editar esta parte
--main :: IO ()
--main = do
 -- x <- readLn
  --print (sumaMenosQueMax (x :: (Int, Int, Int)))

sumaMenosQueMax :: (Int, Int, Int) -> Bool
sumaMenosQueMax (x,y,z) | maxTripla (x,y,z) > (minTripla (x,y,z) + medioTripla (x,y,z)) = True
                        | otherwise = False

-- Completar acá la definición de la función

maxTripla  :: (Int,Int,Int) -> Int
maxTripla  (x,y,z) | x>=y && x>=z = x
                   | y>=x && y>=z = y
                   | otherwise = z

minTripla :: (Int,Int,Int) -> Int
minTripla  (x,y,z) | x<=y && x<=z = x
                   | y<=x && y<=z = y
                   | otherwise = z

medioTripla :: (Int, Int,Int) -> Int
medioTripla (x,y,z) | (x>=y && x<=z) || (x<=y && x<=z) = x
                    | (y>=x && y<=z) || (y<=x && y<=z) = y
                    | otherwise = z


-- Pueden agregan las funciones que consideren necesarias
