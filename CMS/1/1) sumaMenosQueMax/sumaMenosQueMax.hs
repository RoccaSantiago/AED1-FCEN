-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (sumaMenosQueMax (x :: (Int, Int, Int)))

sumaMenosQueMax :: (Int, Int, Int) -> Bool
sumaMenosQueMax (x,y,z) | maxTripla (x,y,z) > (minTripla (x,y,z) + medioTripla (x,y,z)) = True
                        | otherwise = False

maxTripla  :: (Int,Int,Int) -> Int
maxTripla  (x,y,z) | x>=y && x>=z = x
                   | y>=x && y>=z = y
                   | otherwise = z

minTripla :: (Int,Int,Int) -> Int
minTripla  (x,y,z) | x<=y && x<=z = x
                   | y<=x && y<=z = y
                   | otherwise = z

medioTripla :: (Int,Int,Int) -> Int
medioTripla (x,y,z) | (maxTripla (x,y,z)==y && minTripla (x,y,z)==z) || (maxTripla (x,y,z)==z && minTripla (x,y,z)==y) || (x==y && x<z) || (x==z && x<y) = x
                    | (maxTripla (x,y,z)==x && minTripla (x,y,z)==z) || (maxTripla (x,y,z)==z && minTripla (x,y,z)==x) || (y==x && y<z) || (y==z && x<y) = y
                    | otherwise = z