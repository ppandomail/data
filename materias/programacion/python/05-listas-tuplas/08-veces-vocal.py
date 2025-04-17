'''
Escribir un programa que pida al usuario una palabra y muestre por pantalla el
número de veces que contiene cada vocal
'''

palabra = input('Palabra: ')
cant_a, cant_e, cant_i, cant_o, cant_u = 0, 0, 0, 0, 0
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
print(f'Cant. de a = {cant_a}')
print(f'Cant. de e = {cant_e}')
print(f'Cant. de i = {cant_i}')
print(f'Cant. de o = {cant_o}')
print(f'Cant. de u = {cant_u}')