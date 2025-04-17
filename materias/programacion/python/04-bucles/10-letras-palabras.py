'''
Escribir un programa que pida al usuario una palabra y luego muestre por pantalla
una a una las letras de la palabra introducida empezando por la última
'''

palabra = input('Palabra: ')
i = len(palabra) - 1
while i >= 0:
    print(palabra[i])
    i -= 1