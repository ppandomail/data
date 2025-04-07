'''
Escribir una función que reciba una muestra de números en una lista y devuelva su
media.
'''

def calcular_media(lista):
    acum = 0
    for i in range(0, len(lista)):
        acum += lista[i]
    return acum/len(lista)

print(calcular_media([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
print(calcular_media([11, 6, 7, 7, 4]))