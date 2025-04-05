'''
Escribir un programa que pregunte al usuario una cantidad a invertir, el interés anual
y el número de años, y muestre por pantalla el capital obtenido en la inversión cada
año que dura la inversión.
'''

cant_invertir = float(input('Cantidad a Invertir: '))
interes_anual = float(input('Interés anual: '))
num_años = int(input('Número de años: '))
for i in range(1, num_años + 1):
    print('Año ' + str(i) + ' : ' + str(cant_invertir * pow(1 + interes_anual, i)))