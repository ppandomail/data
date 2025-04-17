'''
Escribir una función que reciba una muestra de números en una lista y devuelva otra
lista con sus cuadrados
'''

def calcular_cuadrados(lista):
    cuadrados = []
    for valor in lista:
        cuadrados.append(pow(valor, 2))
    return cuadrados

print(calcular_cuadrados([1, 2, 3, 4, 5]))