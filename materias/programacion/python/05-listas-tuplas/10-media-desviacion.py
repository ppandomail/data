'''
Escribir un programa que pregunte por una muestra de números, separados por
comas, los guarde en una lista y muestre por pantalla su media y desviación típica
'''

lista = []
numero = int(input('Número: '))
acum, cont, cuadrados = 0, 0, 0
while numero != -1:
    lista.append(numero)
    acum += numero
    cont += 1
    cuadrados += pow(numero, 2)
    numero = int(input('Número: '))
print(f'Media: {acum/cont}')
print(f'Desviación típica: {(cuadrados - pow(acum, 2)/cont)/(cont-1)}')