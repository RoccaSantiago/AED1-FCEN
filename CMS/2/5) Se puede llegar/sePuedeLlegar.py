from typing import List
from typing import Tuple

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista y Tupla, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# t: Tuple[str,str]  <--Este es un ejemplo para una tupla de strings.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def sePuedeLlegar(origen: str, destino: str, vuelos: List[Tuple[str, str]]) -> int :
  
  ciudades:List[str]=[origen]
  vuelos1: List[Tuple[str, str]] = vuelos[:]
  
  for ciudad in ciudades: 
    while not(destino in ciudades):
      for vuelo in vuelos1:  
        if vuelo[0] == ciudad and not(vuelo[1] in ciudades):
          ciudades.append(vuelo[1])
          vuelos1.remove(vuelo)
          break
      break
    
  if not(destino in ciudades):
    return -1
  
  return len(ciudades)-1 

if __name__ == '__main__':
  origen = input()
  destino = input()
  vuelos = input()
  
  print(sePuedeLlegar(origen, destino, [tuple(vuelo.split(',')) for vuelo in vuelos.split()]))