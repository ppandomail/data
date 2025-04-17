'''
Escribir un programa que pregunte al usuario una cantidad a invertir, el interés anual
y el número de años, y muestre por pantalla el capital obtenido en la inversión
'''

cant_invertir = float(input('Cantidad a Invertir: '))
interes_anual = float(input('Interés anual: '))
num_años = int(input('Número de años: '))
print(cant_invertir * pow(1 + interes_anual, num_años))