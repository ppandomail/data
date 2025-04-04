cant_invertir = float(input('Cantidad a Invertir: '))
interes_anual = float(input('Interés anual: '))
num_años = int(input('Número de años: '))
print(cant_invertir * pow(1 + interes_anual, num_años))