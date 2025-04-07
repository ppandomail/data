'''
Escribir una función que pida un número entero entre 1 y 10 y guarde en un archivo
con el nombre tabla-n.txt la tabla de multiplicar de ese número donde n es el
número introducido.
'''

def tabla_multiplicar():
    numero = int(input('Número [1..10]: '))
    f = open('tabla-' + str(numero) + '.txt', 'w')
    for i in range(1, 11):
        f.write(str(numero) + ' x ' + str(i) + " = " + str(numero * i) + '\n')
    f.close()

tabla_multiplicar()