'''
Escribir una función que pida dos números n y m entre 1 y 10, lea el archivo tabla-
n.txt con la tabla de multiplicar de ese número, y muestre por pantalla la línea m del
archivo. Si el archivo no existe debe mostrar un mensaje por pantalla informando de
ello
'''

def tabla_multiplicar():
    try:
        f = open(f'tabla-{input('Número N [1..10]: ')}.txt', 'r')
        print(f.readlines()[int(input('Número M [1..10]: ')) - 1])
        f.close()
    except FileNotFoundError:
        print('El archivo no existe!')

tabla_multiplicar()