 #1)
def raizDe2(x:int):
    return round(x**0.5,4) 

#2)

def imprimir_hola():
    print("hola")
    
#3)

def imprimir_un_verso():
    print("He never really looks at me /n I give him every opportunity /n In the room downstairs /n He sat and stared /n In the room downstairs /n He sat and stared2 /n Ill never make that mistake again !") 

#4)

def factorialDe2():
    return 2
    
#5)

def factorialDe4():
    return 4*3*2

#6)

def factorialDe5():
    return 5*factorialDe4()
    
#Ejercicio 2)

#1)

def imprimir_saludo(nombre:str):
    print("Hola",nombre)
    
#2)

def raiz_cuadrada_de(numero:int):
    return numero**0.5

#3)

def imprimir_dos_veces(estribillo:str):
    print(estribillo * 2)

#4)

def es_multiplo_de(n,m:int):
    return n%m==0

#5)

def es_par(numero:int):
    return es_multiplo_de(numero,2)

#6)

def cantidad_de_pizzas(comensales,min_cant_de_porciones:int):
    return round((min_cant_de_porciones*comensales)/8)

#Ejercicio 3)

#1)

def alguno_es_0(numero1,numero2:int):
    if numero1==0 or numero2==0:
        return True
    else:
        return False 
    
#2)

def ambos_son_0(numero1,numero2):
    if numero1==0 and numero2==0:
        return True
    else:
        return False

#3)

def es_nombre_largo(nombre:str):
    if len(nombre)>=3 and len(nombre)<=8:
        return True
    else:
        return False

#4)

def es_bisiesto(año):
    if año%400==0 or (año%4==0 and not(año%100==0)):
        return True 
    else: 
        return False

#Ejercicio 4

#1

