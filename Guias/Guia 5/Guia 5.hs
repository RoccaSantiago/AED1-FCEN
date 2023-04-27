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

--9) FALTA ARREGLAR

capicua :: (Eq t) => [t] -> Bool
capicua [] = True
capicua (x:xs) | x == ultimo (x:xs) = True && capicua (quitar x xs)
               | otherwise = False
