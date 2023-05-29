from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def filasParecidas(matriz: List[List[int]]) -> bool :
    
  for fila in range(1,len(matriz)):
    for elemento in matriz[0]:
      if not(elemento in matriz[fila]):
        return False
  return True

  
 
print(filasParecidas([[1,2,3],[1,5,6],[1,7,9]]))

#if __name__ == '__main__':
#  filas = int(input())
#  columnas = int(input())
# 
#  matriz = []
# 
#  for i in range(filas):         
#    fila = input()
#    if len(fila.split()) != columnas:
#      print("Fila " + str(i) + " no contiene la cantidad adecuada de columnas")
#    matriz.append([int(j) for j in fila.split()])
  
#  print(filasParecidas(matriz))