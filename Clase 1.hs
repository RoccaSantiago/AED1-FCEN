-- ¡IMPORTANT!  ɅɅɅ                                                                                                       

--Ejercicio 1
f :: Integer -> Integer
f 1 = 8
f 4 =  131
f 16 = 16
f x | otherwise = undefined

--problema g:(n:Z):Z {  
    --requiere : {n = 8 V n = 16 V n = 131}
    --asegura : {((n = 8) --> (result = 16)) Ʌ ((n = 16)--> (result = 4)) Ʌ ((n = 131) --> (result = 1))}}

g :: Integer -> Integer
g 8 = 16
g 16 = 4
g 131 = 1
g x | otherwise = undefined

--Dom = {8,131} 
h :: Integer -> Integer
h x = f(g(x)) 


--Dom = {8,1}
k :: Integer -> Integer
k x = g(f(x))

--EJercicio 2
-- a) problema absoluto:(a:Z):Z {
    --requiere: {True}
    --asegura:  { res = (a^2)^0,5}

absoluto :: Integer -> Integer
absoluto entero | entero<0 = (-entero)
absoluto entero | otherwise = entero

-- b) problema MaximoAbsoluto(x,y:Z):Z {
    --requiere: {True}
    --asegura: {if x>=y then res = absoluto(x) else absoluto(y) fi }}

maximoabsoluto :: Integer -> Integer -> Integer
maximoabsoluto x y | x>=y = absoluto x
maximoabsoluto x y | y>x = absoluto y

--c) problema Maximo3(x,y,z:Z): Z{
    --requiere:{true}
    --asegura:{(((x>=y) Ʌ (x>=z)) --> (res = x)) Ʌ (((y>=x) Ʌ (y>=z)) --> (res = y)) Ʌ (((z>=x) Ʌ (z>=y)) --> (res = z)) }}

maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 x y z | x>=y && x>=z = x
maximo3 x y z | y>=x && y>=z = y
maximo3 x y z | otherwise = z

--d) problema algunoes0(x,y:Q): bool{
    --requiere: {True}
    --asegura: {if (x=0 V y=0) then res = True else res = False fi}}

algunoes0 :: Float -> Float -> Bool
algunoes0 x y | x == 0 || y==0 = True
algunoes0 x y | otherwise = False

algunoes0pm :: Float -> Float -> Bool
algunoes0pm 0 y = True
algunoes0pm x 0 = True 
algunoes0pm _ _ = False

--e) problema ambosson0(x,y:Q): Bool {
    --requiere:{True}S
    --asegura:{res = true <--> (x=0 Ʌ y=0)}

ambosson0 :: Float -> Float -> Bool
ambosson0 x y | x == 0 && y==0 = True
ambosson0 x y | otherwise = False

ambosson0pm :: Float -> Float -> Bool
ambosson0pm 0 0 = True
ambosson0pm _ _ = False

--f) problema mismointervalo(x,y:R):Bool{
    --requiere:{True}
    --Asegura:{res = true <--> ( ( (x:(-inf,3]) V (x:(3,7]) V (x:(7,+inf) ) Ʌ ( (x:(-inf,3]) V (x:(3,7]) V (x:(7,+inf) ) )}    



--g) porblema sumadistintos(x,y,z:Z):Z{
    --requiere:{True}
    --asegura:{ ( (x=y) --> (res=z+x) ) Ʌ ( (z=y) --> (res=z+x) ) Ʌ ( (x=y) --> (res=z+x) ) Ʌ ( ( (x != y) Ʌ (x!=z) Ʌ (z!=y) ) --> (res = x+y+z) ) }}

sumadistintos :: Integer -> Integer -> Integer -> Integer
sumadistintos x y z |  y==z && z==y && z==x = undefined
sumadistintos x y z |  x==y = z + x
sumadistintos x y z |  x==z = y + x
sumadistintos x y z |  y==z = x + y
sumadistintos x y z |  otherwise = x + y + z 

--h) problema esmultiplode(x,y:N):Bool{
    --requiere: {True}
    --asegura:{res = True <--> ((y mod x) = 0)}}

esmultiplode :: Integer -> Integer -> Bool
esmultiplode x y | MOD x y == 0 = True 
esmultiplode x y | otherwise = False
