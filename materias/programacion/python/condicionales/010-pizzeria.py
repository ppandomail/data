'''
La pizzería Napoli ofrece pizzas vegetarianas y no vegetarianas a sus clientes. Los
ingredientes para cada tipo de pizza aparecen a continuación.
• Ingredientes vegetarianos: Pimiento y tofu.
• Ingredientes no vegetarianos: Peperoni, Jamón y Salmón.
Escribir un programa que pregunte al usuario si quiere una pizza vegetariana o no, y
en función de su respuesta le muestre un menú con los ingredientes disponibles
para que elija. Solo se puede eligir un ingrediente además de la mozzarella y el
tomate que están en todas la pizzas. Al final se debe mostrar por pantalla si la pizza
elegida es vegetariana o no y todos los ingredientes que lleva.
'''

opcion_vegetariana = input('Quiere una pizza vegetariana (S/N): ')
print('Ingredientes disponibles: ')
if opcion_vegetariana == 'S':
    print('1. Pimiento')
    print('2. Tofu')
else:
    print('1. Peperoni')
    print('2. Jamón')
    print('3. Salmón')
print('8. Mozzarella')
print('9. Tomate')
opcion_ingrediente = input('Ingrediente: ')
if opcion_vegetariana == 'S':
    print('Pizza elegida: vegetariana con ingrediente: ' + opcion_ingrediente)
else:
    print('Pizza elegida: no vegetariana con ingrediente: ' + opcion_ingrediente)