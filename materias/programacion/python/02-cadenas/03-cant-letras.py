'''
Escribir un programa que pregunte el nombre del usuario en la consola y después
de que el usuario lo introduzca muestre por pantalla <NOMBRE> tiene <n> letras,
donde <NOMBRE> es el nombre de usuario en mayúsculas y <n> es el número de
letras que tienen el nombre
'''

nom_usuario = input('Nombre de usuario: ')
print(f'{nom_usuario.upper()} tiene {len(nom_usuario)} letras')