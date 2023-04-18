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
