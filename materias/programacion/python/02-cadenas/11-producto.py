'''
Escribir un programa que pregunte el nombre de un producto, su precio y un número
de unidades y muestre por pantalla una cadena con el nombre del producto seguido
de su precio unitario con 6 dígitos enteros y 2 decimales, el número de unidades
con tres dígitos y el coste total con 8 dígitos enteros y 2 decimales
'''

prod_nombre = input('Nombre de producto: ')
prod_precio = round(float(input('Precio de producto: $ ')), 2)
prod_cant = input('Cant. de productos: ')
prod_total = round(prod_precio * int(prod_cant), 2)

prod_precio = str(prod_precio).split('.')
prod_total = str(prod_total).split('.')

print(f'{prod_nombre} {prod_precio[0].zfill(6)}.{prod_precio[1]} {prod_cant.zfill(3)} {prod_total[0].zfill(8)}.{prod_total[1]}')