'''
Imagina que acabas de abrir una nueva caja de ahorros en USD que te ofrece el 4%
de interés al año. Estos ahorros debido a intereses, que no se cobran hasta finales
de año, se te añaden al balance final de tu caja de ahorros. Escribir un programa
que comience leyendo la cantidad de dinero depositada en la cuenta de ahorros,
introducida por el usuario. Después el programa debe calcular y mostrar por
pantalla la cantidad de ahorros tras el primer, segundo y tercer años. Redondear
cada cantidad a dos decimales.
'''

dinero = float(input('Cant. dinero depositada en caja de ahorro en U$S: '))
primer_año  = round(dinero + dinero * 4 / 100, 2)
segundo_año = round(primer_año + primer_año * 4 / 100, 2)
tercer_año  = round(segundo_año + segundo_año * 4 / 100, 2)
print(f'Ahorro 1er año = {str(primer_año)}')  
print(f'Ahorro 2do año = {str(segundo_año)}')  
print(f'Ahorro 3er año = {str(tercer_año)}')  