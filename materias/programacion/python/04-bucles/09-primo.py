'''
Escribir un programa que pida al usuario un número entero y muestre por pantalla
si es un número primo o no
'''

numero = int(input('Número: '))
primo = True
for i in range(2, numero):
    if numero % i == 0:
        primo = False
        break
print('Es un número primo' if primo else 'No es un número primo')