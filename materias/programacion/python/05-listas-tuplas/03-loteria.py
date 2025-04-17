'''
Escribir un programa que pregunte al usuario los números ganadores de la lotería y
los almacene en una lista y los muestre por pantalla ordenados de menor a mayor
'''

numero = int(input('Número ganador de la lotería: '))
numeros = []
while numero != -1:
    numeros.append(numero)
    numero = int(input('Número ganador de la lotería: '))
numeros.sort()
print(numeros)