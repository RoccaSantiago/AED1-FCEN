--Ejercicio 1)

--1)

longitud :: [t] -> Integer 
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

--2) 

ultimo :: [t] -> t
ultimo (x:xs) | longitud (xs) == 0 = x
              | otherwise = ultimo xs

--3)

principio :: [t] -> [t]
principio (x:xs) = [x]

--4) 
reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]

--Ejercicio 2)

--1)

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece n [] = False
pertenece n (x:xs) | n==x = True
                   | otherwise = pertenece n xs

--2) 

todosIguales :: (Eq t) => [t] -> Bool 
todosIguales (x:xs)| longitud (x:xs) == 1 = True
                   | x == head (xs) = True && todosIguales xs
                   | otherwise = False

--3)

todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos (x:xs)| longitud (x:xs) == 1 = True
                     | x /= head (xs) = True && todosDistintos xs
                     | otherwise = False

--4) 

hayRepetidos :: (Eq t) => [t] -> Bool 
hayRepetidos (x:xs) | longitud xs == 1 = (x == head xs)
                    | x == head (xs) = True
                    | otherwise = hayRepetidos xs   

--5) 

quitar :: (Eq t) => t -> [t] -> [t]
quitar a [] = []
quitar a (x:xs) | a == x = xs 
                | otherwise = [x] ++ quitar a xs

--6)

quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos a [] = []
quitarTodos a (x:xs) | a==x = quitarTodos a xs
                     | otherwise = [x] ++ quitarTodos a xs

--7)

eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) | pertenece x xs = eliminarRepetidos xs
                         | otherwise = [x] ++ eliminarRepetidos xs
                        
--8) 

mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos [] [] = True
mismosElementos x y = mismosElementosaux (eliminarRepetidos x) (eliminarRepetidos y)

mismosElementosaux :: (Eq t) => [t] -> [t] -> Bool
mismosElementosaux [] y = True
mismosElementosaux (x:xs) y | pertenece x y = True && mismosElementos xs y
                            | otherwise = False 

--9)

capicua :: (Eq t) => [t] -> Bool
capicua [] = True
capicua (x:xs) | longitud xs == 0 = True 
               |x == (head (reverso xs)) = True && capicua (quitar x xs)
               | otherwise = False

--Ejercicio 3)

--1)

sumatoria :: [Integer] -> Integer
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

--2)

productoria :: [Integer] -> Integer
productoria [] = 1
productoria (x:xs) = x * productoria xs

--3)

maximo :: [Integer] -> Integer
maximo [x] = x
maximo (x:y:xs) | x>y = maximo (x:xs)
                | otherwise = maximo (y:xs)

--4) 

sumarN :: Integer -> [Integer] -> [Integer]
sumarN n [x] = [x+n]
sumarN n (x:xs) = [x+n] ++ (sumarN n xs) 

--5)

sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero (x:xs) = sumarN x (x:xs)

--6) 

sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo (x:xs) = sumarN (ultimo (x:xs)) (x:xs)

--7)

pares :: [Integer] -> [Integer]
pares [] = []
pares (x:xs) | mod x 2 == 0 = [x] ++ pares xs
             | otherwise = pares xs

--8)

multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN n [] = []
multiplosDeN n [0] = []
multiplosDeN n (x:xs) | mod x n == 0 = [x] ++ multiplosDeN n xs
                      | otherwise = multiplosDeN n xs

--9)

ordenar :: [Integer] -> [Integer]
ordenar [] = []
ordenar (x:xs) | longitud xs == 0 = [x]
               | x <= minimo xs = [x] ++ ordenar xs
               | otherwise = ordenar (xs++[x])

minimo :: [Integer] -> Integer
minimo [x] = x
minimo (x:y:xs) | x <= y = minimo (x:xs)
                | otherwise = minimo (y:xs)

--Ejercicio 4)

--1)

sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos [x] = [x]
sacarBlancosRepetidos (x:y:xs) | x == ' ' && y == ' ' = [' '] ++ sacarBlancosRepetidos xs
                               | otherwise = [x] ++ sacarBlancosRepetidos (y:xs)

--2)

contarPalabras :: [Char] -> Integer
contarPalabras [] = 0
contarPalabras (x:xs) = 1 + contarPalabras xs

--3)

palabraMasLarga :: [Char] -> [Char]
palabraMasLarga a = palabraMasLargacomparador (palabras a) 

palabraMasLargacomparador :: [[Char]] -> [Char]
palabraMasLargacomparador [] =[]
palabraMasLargacomparador (x:xs) | longitud x == maximo (palabraMasLargaaux (x:xs)) = x
                                 | otherwise = palabraMasLargacomparador xs

palabraMasLargaaux :: [[Char]] -> [Integer]
palabraMasLargaaux [] = []
palabraMasLargaaux (x:xs) = [longitud x] ++ palabraMasLargaaux xs
            
--4)

palabras :: [Char] -> [[Char]]
palabras a = palabrasaux a []

palabrasaux :: [Char] -> [Char] -> [[Char]]
palabrasaux [] b = b : []
palabrasaux (x:xs) b | x == ' ' =  b : palabrasaux xs []
                     | otherwise =  palabrasaux xs (b ++ [x])

--5)

aplanar :: [[Char]] -> [Char]
aplanar (x:[]) = x
aplanar (x:xs) = x ++ aplanar xs

--6)
aplanarConBlancos :: [[Char]] -> [Char]
aplanarConBlancos (x:[]) = x
aplanarConBlancos (x:xs) = x ++ [' '] ++ aplanarConBlancos xs

--7)

aplanarConNBlancos :: [[Char]] -> Integer -> [Char]
aplanarConNBlancos (x:[]) n = x
aplanarConNBlancos (x:xs) n = x ++ nBlancosaux n ++ aplanarConNBlancos xs n

nBlancosaux :: Integer -> [Char]
nBlancosaux 0 = []
nBlancosaux n = [' '] ++ nBlancosaux (n-1) 

--Ejercicio 5)

--1)

nat2bin :: Integer -> [Integer]
nat2bin 0 = []
nat2bin x =  nat2bin (div x 2) ++ [mod x 2] 

--2)

bin2nat :: [Integer] -> Integer
bin2nat (x:[]) = x
bin2nat (x:xs) = x*(2^(longitud (x:xs)-1)) + bin2nat xs 

--3)

nat2hex :: Integer -> [Char]
nat2hex 0 = []
nat2hex x = nat2hex (div x 16) ++ [mapN2Hex (mod x 16)]

mapN2Hex :: Integer -> Char
mapN2Hex 0 = '0'
mapN2Hex 1 = '1'
mapN2Hex 2 = '2'
mapN2Hex 3 = '3'
mapN2Hex 4 = '4'
mapN2Hex 5 = '5'
mapN2Hex 6 = '6'
mapN2Hex 7 = '7'
mapN2Hex 8 = '8'
mapN2Hex 9 = '9'
mapN2Hex 10 = 'A'
mapN2Hex 11 = 'B'
mapN2Hex 12 = 'C'
mapN2Hex 13 = 'D'
mapN2Hex 14 = 'E'
mapN2Hex 15 = 'F'

--4)

sumaAcumulada :: (Num t) => [t] -> [t]
sumaAcumulada x = sumaAcumuladaAux x 0

sumaAcumuladaAux :: (Num t) => [t] -> t -> [t]
sumaAcumuladaAux (x:xs) c | longitud xs == 0 = [c+x]
                          | otherwise = [c+x] ++ sumaAcumuladaAux xs (c+x)

--5)

descomponerEnPrimos :: [Integer] -> [[Integer]]
descomponerEnPrimos (x:[]) = [(descomponerEnPrimosaux x 2)]
descomponerEnPrimos (x:xs) = [(descomponerEnPrimosaux x 2)] ++ descomponerEnPrimos xs 

descomponerEnPrimosaux :: Integer -> Integer -> [Integer]
descomponerEnPrimosaux x a | x<a = []
                              | mod x a == 0 = [a] ++ descomponerEnPrimosaux (div x a) a
                              | otherwise = descomponerEnPrimosaux x (a+1)

-- Ejercicio 6)
type Set = []

--1)

agregarATodos :: Integer -> Set (Set Integer) -> Set (Set Integer)
agregarATodos n (x:[]) = [x ++ [n]]    
agregarATodos n (x:xs) = [x ++ [n]] ++ agregarATodos n xs
 
--2)

partes :: Integer -> Set (Set Integer)
partes 1 = [[],[1]]
partes n = agregarATodos n (partes (n-1)) ++ partes (n-1)

--3)

productoCartesiano :: Set Integer -> Set Integer -> Set (Integer, Integer)
productoCartesiano (x:[]) (y:ys) = cartesianoAux x (y:ys)
productoCartesiano (x:xs) (y:ys) = cartesianoAux x (y:ys) ++ productoCartesiano xs (y:ys)

cartesianoAux :: Integer -> Set Integer -> Set (Integer,Integer)
cartesianoAux x (y:[]) = [(x,y)]
cartesianoAux x (y:ys) = [(x,y)] ++ cartesianoAux x ys