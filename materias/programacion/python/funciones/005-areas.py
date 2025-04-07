'''
Escribir una función que calcule el área de un círculo y otra que calcule el volumen
de un cilindro usando la primera función.
'''

import math


def calcular_area_circulo(radio):
    return round(math.pi * pow(radio, 2), 2)

def calcular_volumen_cilindro(altura, radio):
    return round(altura * calcular_area_circulo(radio), 2) 

print(calcular_area_circulo(100))
print(calcular_volumen_cilindro(20, 100))