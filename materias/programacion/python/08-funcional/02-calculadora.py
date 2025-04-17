'''
Escribir una función que simule una calculadora científica que permita calcular el
seno, coseno, tangente, exponencial y logaritmo neperiano. La función preguntará
al usuario el valor y la función a aplicar, y mostrará por pantalla una tabla con los
enteros de 1 al valor introducido y el resultado de aplicar la función a esos enteros
'''

import math

def calculadora():
    numero = int(input('Número: '))
    funcion = input('Función (sin, cos, tan, exp, log): ')
    for i in range(1, numero + 1):
        print(f'{i} = {eval('math.' + funcion + '(' + str(i) + ')')})')

calculadora()