-- ¡IMPORTANT!  Ʌ , ∃                                                                                                      

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
                | otherwise = entero

-- b) problema MaximoAbsoluto(x,y:Z):Z {
    --requiere: {True}
    --asegura: {if x>=y then res = absoluto(x) else absoluto(y) fi }}

maximoabsoluto :: Integer -> Integer -> Integer
maximoabsoluto x y | x>=y = absoluto x
                   | y>x = absoluto y

--c) problema Maximo3(x,y,z:Z): Z{
    --requiere:{true}
    --asegura:{(((x>=y) Ʌ (x>=z)) --> (res = x)) Ʌ (((y>=x) Ʌ (y>=z)) --> (res = y)) Ʌ (((z>=x) Ʌ (z>=y)) --> (res = z)) }}

maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 x y z | x>=y && x>=z = x
              | y>=x && y>=z = y
              | otherwise = z

--d) problema algunoes0(x,y:Q): bool{
    --requiere: {True}
    --asegura: {if (x=0 V y=0) then res = True else res = False fi}}

algunoes0 :: Float -> Float -> Bool
algunoes0 x y | x == 0 || y==0 = True
              | otherwise = False

algunoes0pm :: Float -> Float -> Bool
algunoes0pm 0 y = True
algunoes0pm x 0 = True 
algunoes0pm _ _ = False

--e) problema ambosson0(x,y:Q): Bool {
    --requiere:{True}S
    --asegura:{res = true <--> (x=0 Ʌ y=0)}

ambosson0 :: Float -> Float -> Bool
ambosson0 x y | x == 0 && y==0 = True
              | otherwise = False

ambosson0pm :: Float -> Float -> Bool
ambosson0pm 0 0 = True
ambosson0pm _ _ = False

--f) - problema mismointervalo(x,y:R): Booll
-- requiere: [True)
-- Asegura: {( (res=True) <--> ((x<=3) Ʌ  (y<=3))) V ((res = True) <--> ((3<X<=7) Ʌ (3<y<=7)) V  ((res = True) <--> (7<x) Ʌ (7<y)) }}

mismointervalo :: Float -> Float -> Bool
mismointervalo x y |  (x<=3) && (y<=3) = True
                   |  (3<x && x<=7) && (3<y && y<=7) = True 
                   |  (x>7) && (y>7) = True 
                   |  otherwise = False
                 
--g) porblema sumadistintos(x,y,z:Z):Z{
    --requiere:{True}
    --asegura:{ ( (x=y) Ʌ (x=!z)--> (res=z+x) ) Ʌ ( ((z=y) Ʌ (z!=x)) -->  (res=z+x) ) Ʌ ( ((x=y)    
    --Ʌ (x=!z)) --> (res=z+x) ) Ʌ ( ( (x != y) Ʌ (x!=z) Ʌ (z!=y) ) --> (res = x+y+z) ) }}

sumadistintos :: Integer -> Integer -> Integer -> Integer
sumadistintos x y z |  y==z && z==y && z==x = undefined
                    |  x==y = z + x
                    |  x==z = y + x
                    |  y==z = x + y
                    |  otherwise = x + y + z 

--h) problema esmultiplode(x,y:Z):Bool{
    --requiere: {x>0 Ʌ y>0}
    --asegura:{res = True <--> ((y mod x) = 0)}}

esmultiplode :: Integer -> Integer -> Bool
esmultiplode x y | x>0 && (y>0) && (mod x y == 0) = True 
                 | otherwise = False

--g) problema digitoUnidades(x:Z):Z{
    --Asegura:{x>0}
    --Requiere:{(res = (x mod 10)) Ʌ (res>0)}
    --}

digitoUnidades :: Integer -> Integer 
digitoUnidades x | x>0 = (mod x 10)

--g) problema digitoDecena(x:Z):Z{
    --Asegura:{x>0}
    --Requiere:{(res = (x mod 100)) Ʌ (res>0) }
--}

digitoDecena :: Integer -> Integer
digitoDecena x | (x>0) = (x `div` 10) `mod` 10

--4) a) problema prodInt( x,y:RxR): R {
    --Requiere:{True}
    --Asegura:{res = x1.y1 + x2y2}
--}

prodInt :: (Float,Float) -> (Float,Float) -> Float
prodInt (x1,x2) (y1,y2) = x1*y1 + x2*y2

--b) problema todomenor(x,y:RxR):Bool {
    --Requiera:{True}
    --Asegura:{res = True <--> ((x1<y1) Ʌ (X2<y2))}
--}

todomenor :: (Float,Float)->(Float,Float)->Bool
todomenor (v1 ,v2) (u1,u2) | v1<u1 && v2<u2 =True
                           | otherwise = False

--c) problema distanciapuntos(( x,y:RxR):R) {
    --Requiere:{True}
    --Asegura:{(res=((x1-y1)**2+(x2-y2)**2)**0,5) Ʌ (res >= 0) }
--}
distanciapuntos :: (Num t, Floating t, Ord t) => (t,t) -> (t,t) -> t
distanciapuntos (v1 , v2) (w1, w2) = ((v1-w1)**2 + (v2-w2)**2)**0.5

--d) problema sumaterna(x:ZxZxZ):Z{
    --Requiere:{x1>0 Ʌ x2>0 Ʌ x3>0}
    --Asegura:{res= x1 + x2 + x3}}

sumaterna :: (Integer, Integer,Integer) -> Integer
sumaterna (x,y,z) = x + y + z   

--e)problema  sumarsolomultiplos(x:ZxZxZ y:Z):Z{
    --Requiere:{y>0}
    --Asegura:{res = ∑(i = 1,3) if esmultiplode(xi y) then xi else 0 fi}}
--}

--problema esmutliplo(x,y:Z): Bool {
    --Requiere: {y>0}
    --Asegura: {res= True <--> (x mod y = 0) }
--}

-------------------------------------------------------------------------------------------------------------------------------------------------------------PREGUNTAR---------------------------------------------
--Es necesario aclarar que la 4 variable tiene que ser mayor a 0 en una guarda o ya por la espeficacion 
-- no se le puede meter un input no natural
--Manera mas optima

sumarsolomultiplos :: (Integer,Integer,Integer) -> Integer -> Integer
sumarsolomultiplos (x,y,z) a | ssmesmultiplo x a  && ssmesmultiplo y a  && ssmesmultiplo z a  = x + y + z
                             | not(ssmesmultiplo x a) && ssmesmultiplo y a && ssmesmultiplo z a  = y + z
                             | ssmesmultiplo x a && not(ssmesmultiplo y a) && ssmesmultiplo z a  = x + z
                             | ssmesmultiplo x a  && ssmesmultiplo y a && not(ssmesmultiplo z a) = x + y
                             | not(ssmesmultiplo x a) && not(ssmesmultiplo y a) && ssmesmultiplo z a  = z
                             | ssmesmultiplo x a && not(ssmesmultiplo y a) && not(ssmesmultiplo z a)  = x
                             | not(ssmesmultiplo x a) && ssmesmultiplo y a && not(ssmesmultiplo z a)  = y
                             | otherwise = 0

ssmesmultiplo :: Integer -> Integer -> Bool
ssmesmultiplo x y | mod x y == 0 = True
                  | otherwise = False

--f) problema posprimerpar(x:ZxZxZ): Z{
    --Requiere:{x1>0 Ʌ x2>0 Ʌ x3>0}
    --Asegura: {(espar(x1) --> res=0) Ʌ (espar(x2))-->res=1 Ʌ (espar(x3)-->res=2) Ʌ ((not(espar(x1) Ʌ espar(x2) Ʌ espar(x3)) --> res = 4) } 
--}

----------------------------------------------------------------------------------------------------------------------------------------------------------PREGUNTAR SI EN EL ASEGURA ES Y O O EN EL ULTIMO IMPLICA CON EL NOT
--problema espar(x:Z):Bool {
    --requiere:{x>0}
    --Asegura:{res=True<-->(x mod 2=0)}
--}

posprimerpar :: (Integer,Integer,Integer) -> Integer
posprimerpar (x,y,z) | espar x = 0
                     | espar y = 1
                     | espar z = 2
                     | otherwise = 4

espar :: Integer -> Bool
espar x | mod x 2 == 0 = True
        | otherwise = False              

--g) ---------------------------------------------------------------------------------------------------------------------------------------------------NO SE HACER LA ESPECIFICACION PREGUNTAR

crearpar ::(Eq a, Eq b) => a -> b -> (a,b)
crearpar a b = (a,b)
 
 --h)---------------------------------------------------------------------------------------------------------------------------------------------------NO SE HACER LA ESPECIFICACION PREGUNTAR

invertir :: (Eq a, Eq b) => (a,b) ->(b,a)
invertir (a,b) = (b,a)

