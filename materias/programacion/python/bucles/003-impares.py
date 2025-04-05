'''
Escribir un programa que pida al usuario un número entero positivo y muestre por
pantalla todos los números impares desde 1 hasta ese número separados por
comas.
'''

numero = int(input('Número: '))
impares = ''
for i in range(1, numero+1):
    if i % 2 != 0:
        impares += str(i) + ','
print(impares[0:len(impares)-1])