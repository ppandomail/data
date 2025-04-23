import time

# O(n)
def suma_n_numeros(n):
    suma = 0
    for i in range(1, n + 1):
        suma += i
    return suma

n = 10000000
start_time = time.time()
suma_n_numeros(n)
end_time = time.time()
print(f"Tiempo de ejecución: {end_time - start_time} segundos")