'''
Escribir una función que reciba una muestra de números en una lista y devuelva un
diccionario con su media, varianza y desviación típica.
'''

from math import sqrt


def generar_diccionario(lista):
    dicc = {}

    acum = 0
    for i in range(0, len(lista)):
        acum += lista[i]
    media = acum / len(lista)
    dicc['media'] = media

    acum = 0
    for i in range(0, len(lista)):
        acum += pow(lista[i] - media, 2)
    varianza = acum / len(lista)
    dicc['varianza'] = varianza

    desviacion = round(sqrt(acum / (len(lista) - 1)), 2)
    dicc['desviacion'] = desviacion

    return dicc

print(generar_diccionario([24, 28, 25, 27]))
print(generar_diccionario([135, 131, 129, 133, 127, 128, 130, 132, 129, 125]))