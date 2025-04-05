'''
Escribir un programa que pida al usuario una palabra y muestre por pantalla el
número de veces que contiene cada vocal.
'''

palabra = input('Palabra: ')
cant_a = 0
cant_e = 0
cant_i = 0
cant_o = 0
cant_u = 0
for i in range(0, len(palabra)):
    if palabra[i] == 'a':
        cant_a += 1
    elif palabra[i] == 'e':
        cant_e += 1
    elif palabra[i] == 'i':
        cant_i += 1
    elif palabra[i] == 'o':
        cant_o += 1
    elif palabra[i] == 'u':
        cant_u += 1
print('Cant. de a = ' + str(cant_a))
print('Cant. de e = ' + str(cant_e))
print('Cant. de i = ' + str(cant_i))
print('Cant. de o = ' + str(cant_o))
print('Cant. de u = ' + str(cant_u))