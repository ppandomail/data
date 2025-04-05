'''
Escribir un programa que pregunte por consola por los productos de un carrito de
compras, separados por comas, y muestre por pantalla cada uno de los productos
en una línea distinta.
'''

carrito_compras = input('Productos (separados por ,): ' )
carrito_compras = carrito_compras.split(',')
for i in range(0, len(carrito_compras)):
    print(carrito_compras[i])