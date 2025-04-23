import time

# O(2^n)
def fibonacci_exponential(n):
    if n <= 1:
        return n
    return fibonacci_exponential(n - 1) + fibonacci_exponential(n - 2)

n = 32
start_time = time.time()
print(f"El {n}-ésimo número de Fibonacci es: {fibonacci_exponential(n)}")
end_time = time.time()
print(f"Tiempo de ejecución: {end_time - start_time} segundos")