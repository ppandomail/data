'''
Escribir un programa que pregunte al usuario su nombre, edad, dirección y teléfono
y lo guarde en un diccionario. Después debe mostrar por pantalla el
mensaje <nombre> tiene <edad> años, vive en <dirección> y su número de teléfono
es <teléfono>.
'''

nombre = input('Nombre: ')
edad = int(input('Edad: '))
direccion = input('Dirección: ')
telefono = input('Teléfono: ')

diccionario = {}
diccionario['nombre'] = nombre
diccionario['edad'] = edad
diccionario['direccion'] = direccion
diccionario['telefono'] = telefono

print(diccionario['nombre'] + ' tiene ' + str(diccionario['edad']) + ' años, vive en ' + diccionario['direccion'] + ' y su número de teléfono es ' + diccionario['telefono'])