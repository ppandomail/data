'''
Escribir una función que pida un número entero entre 1 y 10, lea el archivo tabla-
n.txt con la tabla de multiplicar de ese número, donde n es el número introducido,
y la muestre por pantalla. Si el archivo no existe debe mostrar un mensaje por
pantalla informando de ello
'''

def tabla_multiplicar():
    try:
        f = open(f'tabla-{input('Número [1..10]: ')}.txt', 'r')
        print(f.read())
        f.close()
    except FileNotFoundError:
        print('El archivo no existe!')

tabla_multiplicar()