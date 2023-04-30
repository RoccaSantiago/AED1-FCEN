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

aplanar :: [[Char]]