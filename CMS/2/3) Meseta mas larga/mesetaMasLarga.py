from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def mesetaMasLarga(lista:List[int]):
  mesetalen:int=1
  listamesetas:List[int]=[] 
  for posicion in range(1,len(lista)):
      if lista[posicion-1]==lista[posicion]:
        mesetalen+=1
      else:
        listamesetas.append(mesetalen)
        mesetalen:int=1
        continue
  listamesetas.append(mesetalen)
    
  if lista==[]:
    return 0
  else:
    return max(listamesetas)


if __name__ == '__main__':
  x = input()
  print(mesetaMasLarga([int(j) for j in x.split()]))