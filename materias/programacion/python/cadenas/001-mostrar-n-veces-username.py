'''
Escribir un programa que pregunte el nombre del usuario en la consola y un número
entero e imprima por pantalla en líneas distintas el nombre del usuario tantas veces
como el número introducido.
'''

nom_usuario = input('Nombre de usuario: ')
n = int(input('Número: '))
for i in range(0, n):
    print(nom_usuario)    