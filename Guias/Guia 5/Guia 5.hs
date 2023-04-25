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
