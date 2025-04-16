'''
Escribir un programa que pregunte por consola el precio de un producto en pesos
con dos decimales y muestre por pantalla el número de pesos y el número de
centavos del precio introducido.
'''

precio_producto = round(float(input('Precio producto: $ ')), 2)
pesos_centavos = str(precio_producto).split('.')
print(f'Pesos: {pesos_centavos[0]}')
print(f'Centavos: {pesos_centavos[1]}')