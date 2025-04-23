# O(1)
def algoritmo_constante():
    return 42 

# O(n)
def algoritmo_lineal(n):
    for i in range(n):
        print(i)  

# O(n²)
def algoritmo_cuadratico(n):
    for i in range(n):
        for j in range(n):
            print(i, j)  

n = 10
algoritmo_constante()
algoritmo_lineal(n)
algoritmo_cuadratico(n)