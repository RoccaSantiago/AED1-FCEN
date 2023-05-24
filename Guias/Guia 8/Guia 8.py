#Ejercicio 1)

#1)

def pertenece1(x:list,y:int)->bool:
    for i in x:
        if y==i:
            return True
        else: 
            return False
        
def pertenece2(x:list,y:int)->bool:
    z=0
    while z<len(x):
        if x[z]==y:
            return True
        else:
            z+=1
    return False

def pertenece3(x:list,y:int)->bool:
    return y in x

#2)

def divideATodos(x:list,y:int)->bool:
    for i in x:
        if i%y != 0:
            return False
    return True


#3)

def sumaTotal(x:list)->int:
    y=0
    for i in x:
        y += i
    return y

#4)

def ordenados(x:list)->bool:
    for i in range(len(x)-1):
        if x[i]>=x[i+1]:
            return False 
    return True

#5)

def palabra7(x:list)->bool:
    for i in x:
        if len(i)==7:
            return True
    return False

#6)

def esPalindroma(x:str)->bool:
    for i in range(len(x)/2):
        if x[i] != x[-i-1]:
            return False
    return True

#7)

def analizarContraseña(x:str):
    #Verde

