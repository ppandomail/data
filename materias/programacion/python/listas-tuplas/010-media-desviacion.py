'''
Escribir un programa que pregunte por una muestra de números, separados por
comas, los guarde en una lista y muestre por pantalla su media y desviación típica.
'''

lista = []
numero = int(input('Número: '))
acum = 0
cont = 0
cuadrados = 0
while numero != -1:
    lista.append(numero)
    acum += numero
    cont += 1
    cuadrados += pow(numero, 2)
    numero = int(input('Número: '))
print('Media: ' + str(acum/cont))
print('Desviación típica: ' + str((cuadrados - pow(acum, 2)/cont)/(cont-1)))