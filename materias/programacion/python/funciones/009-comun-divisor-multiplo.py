'''
Escribir una función que calcule el máximo común divisor de dos números y otra
que calcule el mínimo común múltiplo.
'''

import math

def calcular_mcm(num1, num2):
    return abs(num1 * num2) // math.gcd(num1, num2)

def calcular_mcd(num1, num2):
    return math.gcd(num1, num2)

# Definir los números para los cuales deseas calcular el MCM y el MCD
numero1 = 24
numero2 = 36

# Calcular el MCM y el MCD
mcm = calcular_mcm(numero1, numero2)
mcd = calcular_mcd(numero1, numero2)

# Imprimir los resultados
print(f"El Mínimo Común Múltiplo (MCM) de {numero1} y {numero2} es: {mcm}")
print(f"El Máximo Común Divisor (MCD) de {numero1} y {numero2} es: {mcd}")