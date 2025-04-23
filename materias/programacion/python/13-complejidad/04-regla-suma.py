def regla_suma(n):
    # Parte 1: O(n)
    for i in range(n):
        print(i)
    
    # Parte 2: O(n²)
    for i in range(n):
        for j in range(n):
            print(i, j)

# Complejidad total: O(n + n²) = O(n²)
regla_suma(10)