'''
Escribir un programa que almacene la cadena de caracteres contraseña en una
variable, pregunte al usuario por la contraseña hasta que introduzca la contraseña
correcta.
'''

contraseña = 'pepe123'
contraseña_usuario = input('Contraseña: ')
while contraseña_usuario != contraseña:
    contraseña_usuario = input('Contraseña: ')
print('Contraseña correcta')