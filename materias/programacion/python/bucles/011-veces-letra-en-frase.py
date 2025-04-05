'''
Escribir un programa en el que se pregunte al usuario por una frase y una letra, y
muestre por pantalla el número de veces que aparece la letra en la frase.
'''

frase = input('Frase: ')
letra = input('Letra: ')
cont = 0
for i in range(0, len(frase)):
    if frase[i] == letra:
        cont += 1
print(cont)