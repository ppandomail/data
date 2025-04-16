'''
Una panadería vende bolsas de pan a ARS 2000 cada una. El pan que no es el día
tiene un descuento del 60%. Escribir un programa que comience leyendo el número
de bolsas vendidas que no son del día. Después el programa debe mostrar el precio
habitual de una bolsa de pan, el descuento que se le hace por no ser fresca y el
coste final total.
'''

bolsas_vendidad_no_dia = int(input('Cant de bolsas vendidas que no son del día: '))
precio_bolsa_pan = 2000
print(f'Precio bolsa de pan: $ {str(precio_bolsa_pan)}')
print('Descuento por no ser fresca: 60%')
print(f'Costo total: $ {str(bolsas_vendidad_no_dia * precio_bolsa_pan * 60 / 100)}')