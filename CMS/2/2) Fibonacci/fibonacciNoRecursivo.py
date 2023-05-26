import sys

def fibonacciNoRecursivo(n: int) -> int:
  if n==0:
    return 0
  if n==1:
    return 1
  else:
    a=0
    for i in range(1,n):
      a = 1 + i-1 + i-2
    return a

print(fibonacciNoRecursivo(3))
print(fibonacciNoRecursivo(4))
print(fibonacciNoRecursivo(5))

#if __name__ == '__main__':
  #x = int(input())
  #print(fibonacciNoRecursivo(x))