def regla_multiplicacion(n):
    # Parte 1: O(n)
    for i in range(n):
        print(i)
        # Parte 2: O(n)
        for i in range(n):
            print(i)

# Complejidad total: O(n * n) = O(n²)
regla_multiplicacion(10)