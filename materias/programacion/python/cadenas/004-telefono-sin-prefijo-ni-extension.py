'''
Los teléfonos de una empresa tienen el siguiente formato prefijo-número-
extension donde el prefijo es el código del país +54, y la extensión tiene cuatro
dígitos (por ejemplo +54-9115847-1056). Escribir un programa que pregunte por un
número de teléfono con este formato y muestre por pantalla el número de teléfono
sin el prefijo y la extensión.
'''

numero_telefono = input('Número de teléfono (prefijo-número-extensión): ')
print(numero_telefono.split('-')[1])