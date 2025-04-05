'''
Escribir un programa que pida al usuario una palabra y muestre por pantalla si es
un palíndromo.
'''

palabra = input('Palabras: ')
lista1 = []
lista2 = []
for i in range(0, len(palabra)):
    lista1.append(palabra[i])
    lista2.append(palabra[i])

lista2.reverse()
if lista1.__eq__(lista2):
    print('Palíndromo')
else:
    print('NO Palíndromo')