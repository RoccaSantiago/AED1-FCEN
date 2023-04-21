--1)

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-2) + fibonacci (x-1)

--2)
--floor x  funcion que devuelve el piso del numero

parteEntera :: Float -> Integer
parteEntera x | x<1 = 0
              | otherwise = 1 + parteEntera (x-1)


--3)

esDivisible :: Integer -> Integer -> Bool
esDivisible x y | x==y = True
                | x<y = False
                |otherwise = esDivisible (x-y) y

--4)

sumaImpares :: Integer -> Integer
sumaImpares x | x==1 = 1
              | otherwise = 2*x -1 + sumaImpares (x-1)

--5)

medioFact :: Integer -> Integer 
medioFact x | x==0 || x==1 = 1
            | otherwise = x * medioFact(x-2)

--6)

sumaDigitos :: Integer -> Integer 
sumaDigitos x | x==0 || x<0 = 0 
              | otherwise = mod x 10 + sumaDigitos(div x 10)

--7)

todosDigitosIguales :: Int -> Bool
todosDigitosIguales x | x<10 = True
                      | x==0 = True
                      | auxSumaDigitos x==(auxContador x) * (auxdigitoUnidades x) = True
                      | otherwise = False
 
auxdigitoUnidades :: Int -> Int
auxdigitoUnidades x | x>0 = (mod x 10)

auxSumaDigitos :: Int -> Int
auxSumaDigitos x | x==0 || x<0 = 0 
                 | otherwise = mod x 10 + auxSumaDigitos(div x 10)

auxContador :: Int-> Int
auxContador x = length (show (abs x))

--8)

iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n i = (n `div` 10^(cantDigitos(n)-i)) `mod` 10

cantDigitos :: Integer -> Integer
cantDigitos n | n == 0 = 1
              | otherwise = contarDigitos n
              where
                contarDigitos 0 = 0
                contarDigitos n = 1 + contarDigitos (n `div` 10)


--9)
--esCapicua :: 



--10) a)

f1 :: Integer -> Integer
f1 0 = 1
f1 x = 2^x + f1 (x-1)

--b)

f2 :: Integer -> Float -> Float 
f2 1 q = q
f2 n q = q^n + f2 (n-1) q

--c) 

f3 :: Integer -> Float -> Float 
f3 0 q = 0
f3 1 q = q + q^2
f3 n q = q^(2*n -1) + q^(2*n) + f3 (n-1) q

--d)






