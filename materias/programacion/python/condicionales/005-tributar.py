'''
Para tributar un determinado impuesto se debe ser mayor de 18 años y tener unos
ingresos iguales o superiores a 500000 ARS mensuales. Escribir un programa que
pregunte al usuario su edad y sus ingresos mensuales y muestre por pantalla si el
usuario tiene que tributar o no.
'''

edad = int(input('Edad: '))
ingresos = float(input('Ingresos: '))
if edad >= 18 and ingresos >= 500000:
    print('Tributa')
else:
    print('No tributa')