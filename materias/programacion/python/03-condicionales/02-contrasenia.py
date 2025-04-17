'''
Escribir un programa que almacene la cadena de caracteres contraseña en una
variable, pregunte al usuario por la contraseña e imprima por pantalla si la
contraseña introducida por el usuario coincide con la guardada en la variable sin
tener en cuenta mayúsculas y minúsculas
'''

#contraseña_actual = 'pepe123'
#contraseña_usuario = input('Contraseña: ')
#if contraseña_usuario.upper() == contraseña_actual.upper():
#    print('Coincide')
#else:
#    print('No coincide')

contrasenia_actual = 'pepe123'
print('Coincide' if input('Contraseña: ').upper() == contrasenia_actual.upper() else 'No coincide')