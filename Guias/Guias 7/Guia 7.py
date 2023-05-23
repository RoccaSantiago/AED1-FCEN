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

#1)

def peso_pino(metros:float):
    if metros<=3:
        return 300*metros
    else:
        return (metros-3)*200 + 3*300

#2)

def es_peso_util(peso:int):
    if peso>=400 and peso<=1000:
        return True
    else:
        return False

#3)

def sirve_altura(altura:float):
    if altura>= 4/3 and altura<=7/2:
        return True 
    else: 
        return False

#4)

def sirve_pino(altura:float,peso:int):
    if sirve_altura(altura) and es_peso_util(peso):
        return True
    else:
        return False
    
#Ejercicio 5)

#1)

# problema devolverElDobleSiEsPar(n:Z):Z{
#   Requiere: {True}
#   Asegura :{(mod n 2 = 0 -> res = n*2) ʌ mod n 2 /= 0 -> res = n}
# }

def devolver_el_doble_si_es_par(un_numero:int):
    if un_numero%2==0:
        return un_numero*2
    else: 
        return un_numero

#2)

#problema devolvervalorsiesparsinoelquesigue(n:Z):Z{
#   Requiere: {True}
#   Asegura: {if mod n 2 = 0 then res=n else res=n+1 fi}
# }

def devolver_valor_si_par_sino_siguiente(un_numero:int):
    if un_numero%2==0:
        return un_numero
    else: 
        return un_numero+1

#3)
 
 #problema devolvereldoblesiesmultiplo3eltriplesiesmultiplo9(n:Z):Z{
 #  Requiere: {True}
 #  Asegura: {((mod n 9 = 0) -> res=n*3) ʌl ((mod n 3 = 0) -> res=n*2) ʌl ((mod n 3 /= 0 ʌ mod n 9 /=0) -> res = n)) }
 # }

def devolvereldoblesiesmultiplo3eltriplesiesmultiplo9(un_numero):
    if un_numero%9==0:
        return un_numero*3
    elif un_numero%3==0:
        return un_numero*2
    else:
        return un_numero
 
 #4)

#problema discriminador_nombre(a:string):string{
#   Requiere: {True}
#   Asegura: {if |a|>= 5 then res="Tu nombre tiene muchas letras!" else res="Tu nombre tiene menos de 5 letras" fi}
# }

def discriminador_nombre(nombre:str):
    if len(nombre)>=5:
        return "Tu nombre tiene muchas letras!"
    else: 
        return "Tu nombre tiene menos de 5 caracteres"
 
 #5)

 #problema decidite(genero:string, edad:integer):String{
 #  Requiere: {genero="M" V genero "F"}
 #  Asegura: {if ((genero = M ʌ edad>=65) V (edad>=18) V (genero = F ʌ edad>=60)) then res="Anda de Vaciones" else res="Te toca trabajar"}
 # }


def a_laburar(edad:int,sexo:str)->str:
    if (edad>=65 and sexo =="M") or (edad<=60 and sexo=="F") or (edad<18):
        return "Anda de vaciones"
    else: 
        return "Te toca trabajar"

#Ejercicio 6)

#1)

def imprimir_1al10():
    n=0
    while n<=10:
        print(n)
        n+=1

#2)

def imprimir_10al40():
    n=10
    while n<=40:
        print(n)
        
#3)

def imprimir_ecox10():
    n=0
    while n<=10:
        print("eco")
        n+=1

#4)

def cuenta_regresiva(n:int):
    n=n
    while n>0:
        print(n)
        n-=1
    print("Despegue")

#5)

def viaje_tiempo(partida,llegada:int)->str:
    n=partida+1
    while n>=llegada:
        print("Viajo un año al pasado, estamos en el año {}".format(n))
        n-=1

#6)

def viaje_tiempo_extremo(partida:int)->str:
    n=partida+1
    while n>=-384:
        print("Viajo veinte años al pasado, estamos en el año {}".format(n))
        n-=20

#Ejercicio 7)

#1)

def imprimir_1al10_for()->int:
    for i in range(1,11):
        print(i)

#2)

def imprimir_10al40_for()->int:
    for i in range(10,41,2):
        print(i)

#3)

def imprimir_ecox10_for()->str:
    for i in range(1,11):
        print("eco")

#4)

def cuenta_regresiva_for(n:int):
    for i in range(n,0,-1):
        print(i)
    print("Despuegue")

#5)

def viaje_tiempo_for(partida,llegada:int)->str:
    for i in range(partida+1,llegada-1,-1):
        print("Viajo un año al pasado, estamos en el año {}".format(i))

#6)

def viaje_tiempo_extremo_for(partida:int)->str:
    for i in range(partida+1,-385,-20):
        print("Viajo veinte años al pasado, estamos en el año {}".format(i))


