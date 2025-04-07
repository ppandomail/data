'''
Escribir un programa que cree un diccionario simulando un carrito de compras. El
programa debe preguntar el artículo y su precio y añadir el par al diccionario, hasta
que el usuario decida terminar. Después se debe mostrar por pantalla la lista de la
compra y el costo total, con el siguiente formato
Lista de la compra
Artículo 1 Precio
Artículo 2 Precio
Artículo 3 Precio
...        ...
Total Coste
'''

carrito = {}
articulo = input('Artículo: ')
carrito[articulo] = float(input('Precio $: '))
opc = input('Continua (S/N): ')
while opc == 'S':
    articulo = input('Artículo: ')
    carrito[articulo] = float(input('Precio $: '))
    opc = input('Continua (S/N): ')
print('Lista de la compra')
total = 0
for art in carrito.items():
    print(art[0] + '   ' + str(art[1]))
    total += art[1]
print('Total ' + str(total))