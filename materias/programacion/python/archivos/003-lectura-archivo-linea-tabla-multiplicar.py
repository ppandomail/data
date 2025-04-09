'''
Escribir una función que pida dos números n y m entre 1 y 10, lea el archivo tabla-
n.txt con la tabla de multiplicar de ese número, y muestre por pantalla la línea m del
archivo. Si el archivo no existe debe mostrar un mensaje por pantalla informando de
ello.
'''

def tabla_multiplicar():
    numero_n = int(input('Número N [1..10]: '))
    numero_m = int(input('Número M [1..10]: '))
    try:
        f = open('tabla-' + str(numero_n) + '.txt', 'r')
        lineas = f.readlines()
        print(lineas[numero_m - 1])
        f.close()
    except FileNotFoundError:
        print('El archivo no existe!')

tabla_multiplicar()