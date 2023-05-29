import sys

def fibonacciNoRecursivo(n: int) -> int:
  if n==0:
    return 0
  if n==1:
    return 1
  else:
    an0 = 0 
    an1 = 1
    an2 = 0
    for _ in range(2,n+1):
      an2 = an0 + an1
      an0 = an1
      an1 = an2
  return an2

#if __name__ == '__main__':
  #x = int(input())
  #print(fibonacciNoRecursivo(x))