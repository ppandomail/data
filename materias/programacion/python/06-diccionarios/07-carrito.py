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
art = input('Artículo: ')
carrito[art] = float(input('Precio $: '))
opc = input('Continua (S/N): ')
while opc == 'S':
    art = input('Artículo: ')
    carrito[art] = float(input('Precio $: '))
    opc = input('Continua (S/N): ')
print('Lista de la compra')
total = 0
for art, precio in carrito.items():
    print(f'{art} {precio}')
    total += precio
print(f'Total {total}')