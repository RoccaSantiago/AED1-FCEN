import random as random
from  queue  import  LifoQueue  as Pila

# Ejercicio 1
#1)

def contarLineas(archivo:str)->int:
    f = open(archivo,"r")
    return len(f.readlines())




#2)

def existePalabra(palabra:str, archivo:str)-> bool:
    f = open(archivo,"r")
    texto:[str] = f.readlines()
    if palabra in texto:
        return True 
    else: 
        return False


#3)

def cantidadApariciones(palabra:str, nombre_archivo:str) -> int:
    file = open(nombre_archivo)
    apariciones:int = 0
    lines:str = file.readlines()
    for line in lines:
        while (palabra in line):
            apariciones = apariciones + 1
            line = line[line.index(palabra)+len(palabra)-1:]
    return apariciones

#Ejercicio 2

#1)

def clonarSinComentarios(archivo:str):
    file = open(archivo, "r") 
    lines = file.readlines()
    for n in range(len(lines)):
        lislinea = list(lines[n])
        if lislinea[0]=="#":
            lines[n]=[]
        elif lislinea[0]==" ":
            for i in range(0,len(lislinea)):
                for k in range(0,i):
                    if lislinea[i]=="#" and  lislinea[i-k]==" ":
                        lines[n]=[]
    end=open("strNuevo.txt","w")
    for line in lines:
        if line !=[]:
            end.write(str(line))

#Ejercicio 3)
#1)

def reversar(archivo:str):
    file = open(archivo, "r")
    nuevo = open("reverso.txt", "w")
    lines = file.readlines()
    lines=lines[::-1]
    nuevo.writelines(lines)


#Ejercicio 4)
#1)

def meterFrase(frase:str,archivo:str):
    file = open(archivo,"r")
    lines = file.readlines()
    lines.append(frase)
    nuevo = open(archivo,"w")
    nuevo.write(lines)
    
#Ejercicio 5)        
def meterFrase(frase:str,archivo:str):
    file = open(archivo,"r")
    lines = file.readlines()
    lines.insert(frase)
    nuevo = open(archivo,"w")
    nuevo.write(lines)

    
    
#ejercicio 8)
def generarNrosAlAzar(n:int,desde:int,hasta:int):
    a = list((range(desde,hasta)))
    return random.sample(a,n)

#Ejercicio 9)

def azarpila():
    lista = generarNrosAlAzar(10,1,15)
    p = Pila()
    for i in lista:
        p.put(i)
    return p


#Ejercicio 10)



#print(cantidadElementos(azarpila()))

#Ejercicio 11)
