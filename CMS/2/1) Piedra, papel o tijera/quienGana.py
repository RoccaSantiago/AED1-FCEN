import sys

def quienGana(j1: str, j2: str) -> str : 
    if j1==j2:
       return "Empate"
    if  (j1=="Papel" and j2=="Piedra") or (j1=="Tijera" and j2=="Papel") or (j1=="Piedra" and j2=="Tijera"):
      return "Jugador1"
    else:
       return "Jugador 2"

if __name__ == '__main__':
  x = input()
  jug = str.split(x)
  print(quienGana(jug[0], jug[1]))