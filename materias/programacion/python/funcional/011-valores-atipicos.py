'''
Escribir una función que reciba una muestra de números y devuelva los valores
atípicos, es decir, los valores cuya puntuación típica sea mayor que 3 o menor que
-3. Nota: La puntuación típica de un valor se obtiene restando la media y dividiendo
por la desviación típica de la muestra.
'''

from functools import reduce
from math import sqrt


def calcular_media(lista):
    return reduce(lambda x, y : x + y, lista)/len(lista)

def desviacion_tipica(lista):
    media = calcular_media(lista)
    lista = list(map(lambda x: pow(x - media, 2), lista))
    desv  = reduce(lambda x, y : x + y, lista)
    return sqrt(desv / (len(lista) - 1))

def puntuacion_tipica(valor, lista):
    return (valor - calcular_media(lista))/desviacion_tipica(lista)

def valores_atipicos(lista):
    return list(filter(lambda x : es_atipico(puntuacion_tipica(x, lista)), lista))

def es_atipico(valor):
    return valor > 3 or valor < -3

print(valores_atipicos([34, 40, 120, 37, 33, 39]))