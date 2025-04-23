import time

# O(1)
def suma_directa(n):
    return n * (n + 1) // 2

n = 1000000
start_time = time.time()
suma_directa(n)
end_time = time.time()
print(f"Tiempo de ejecución: {end_time - start_time} segundos")