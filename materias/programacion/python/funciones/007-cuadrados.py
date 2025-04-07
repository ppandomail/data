'''
Escribir una función que reciba una muestra de números en una lista y devuelva otra
lista con sus cuadrados.
'''

def calcular_cuadrados(lista):
    cuadrados = []
    for i in range(0, len(lista)):
        cuadrados.append(pow(lista[i], 2))
    return cuadrados

print(calcular_cuadrados([1, 2, 3, 4, 5]))