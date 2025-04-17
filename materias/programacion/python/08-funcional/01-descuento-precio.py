'''
Escribir una función que aplique un descuento a un precio y otra que aplique el IVA
a un precio. Escribir una tercera función que reciba un diccionario con los precios y
porcentajes de una cesta de la compra, y una de las funciones anteriores, y utilice
la función pasada para aplicar los descuentos o el IVA a los productos de la cesta y
devolver el precio final de la cesta
'''

def aplicar_descuento(precio, descuento):
    return precio - precio * descuento / 100

def aplicar_iva(precio, iva):
    return precio + precio * iva / 100

def aplicar(dicc, funcion):
    precio_final = 0
    for value in dicc.values():
        precio_final += funcion(value.get('precio'), value.get('porcentaje'))
    return precio_final

print(aplicar({'1': {'precio': 100, 'porcentaje': 20}, '2': {'precio': 100, 'porcentaje': 21} }, aplicar_iva))
print(aplicar({'1': {'precio': 100, 'porcentaje': 20}, '2': {'precio': 100, 'porcentaje': 21} }, aplicar_descuento))