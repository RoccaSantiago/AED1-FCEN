--1)

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-2) + fibonacci (x-1)

--2)

parteEntera :: Float -> Integer
parteEntera x =  toInteger (round x)


--3)

esDivisible :: Integer -> Integer -> Bool
esDivisible x y | x==y = True
                | x<y = False
                |otherwise = esDivisible (x-y) y

--4)

sumaImpares :: Integer -> Integer
sumaImpares x | x==1 = 1
              | x==2 = 3
              | otherwise = 2*x -1 + sumaImpares (x-1)