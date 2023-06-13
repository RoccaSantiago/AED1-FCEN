# Ejercicio 1
#1)

def contarLineas(archivo:str)-> :
    f = open(archivo,"r")
    lineas:int = len(archivo.readlines())
    f.close
    return lineas

#2)
def esSeparador(caracter: str) -> bool:
        return caracter == " " or caracter == "\n" or caracter == "," or caracter == "."

def existePalabra(palabra:str, archivo:str)->bool:
    f = open(archivo,"r")
    texto:str = f.read()
    palabraActual:str=""
    res:bool= False
    i:int=False

    while (i < len(texto) and not res):
        if esSeparador(texto[i]):
            if palabra_actual == palabra:
                res = True
            palabra_actual = ""
        else:
            palabra_actual += texto[i]
        i += 1
    
    if palabra_actual == palabra: ## si al final no hay separador
        res = True

    return res
#3)

def cantidadApariciones(palabra: str, archivo: str) -> int:
    f = open(archivo, 'r', encoding="utf-8")
    texto: str = f.read()
    palabra_actual: str = ""
    res: int = 0
    for i in range(len(texto)):
        if esSeparador(texto[i]):
            if palabra_actual == palabra:
                res += 1
            palabra_actual = ""
        else:
            palabra_actual += texto[i]

    if palabra_actual == palabra: ## si al final no hay separador
        res += 1
    f.close()
    return res

###