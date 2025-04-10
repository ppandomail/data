'''
Escribir un programa que permita gestionar la base de datos de clientes de una
empresa. Los clientes se guardarán en un diccionario en el que la clave de cada
cliente será su DNI, y el valor será otro diccionario con los datos del cliente (nombre,
dirección, teléfono, correo electrónico, preferente), donde preferente tendrá el
valor True si se trata de un cliente preferente. El programa debe preguntar al usuario
por una opción del siguiente menú: (1) Añadir cliente, (2) Eliminar cliente, (3)
Mostrar cliente, (4) Listar todos los clientes, (5) Listar clientes preferentes, (6)
Terminar. En función de la opción elegida el programa tendrá que hacer lo siguiente:
1. Preguntar los datos del cliente, crear un diccionario con los datos y añadirlo
a la base de datos.
2. Preguntar por el DNI del cliente y eliminar sus datos de la base de datos.
3. Preguntar por el DNI del cliente y mostrar sus datos.
4. Mostrar lista de todos los clientes de la base datos con su DNI y nombre.
5. Mostrar la lista de clientes preferentes de la base de datos con su DNI y
nombre.
6. Terminar el programa.
'''

clientes = {'123': {'nom': 'Pablo', 'dir': 'abc', 'tel': '123', 'mail': '', 'pref': True}, 
            '456': {'nom': 'Ana', 'dir': 'abc', 'tel': '123', 'mail': '', 'pref': False}, 
            '789': {'nom': 'Maria', 'dir': 'abc', 'tel': '123', 'mail': '', 'pref': True}}

def menu():
    opc = 0
    while (opc != 6):
        if opc == 1:
            agregar()
        if opc == 2:
            eliminar()
        if opc == 3:
            consultar()
        if opc == 4:
            listar()
        if opc == 5:
            listar_pref()
        if opc != 0:
            input()
        print()
        print('--------MENU---------')
        print('1. Agregar cliente')
        print('2. Eliminar cliente')
        print('3. Consultar cliente')
        print('4. Listado clientes')
        print('5. Clientes preferentes')
        print('6. Salir')
        print()
        opc = int(input('?- '))

def agregar():
    dni = input('DNI: ')
    datos = {}
    datos['nom'] = input('Nombre: ')
    datos['dir'] = input('Dirección: ')
    datos['tel'] = input('Tel. :')
    datos['mail'] = input('Email: ')
    datos['pref'] = True if input('Preferente (S/N): ') == 'S' else False
    clientes[dni] = datos

def eliminar():
    dni = input('DNI: ')
    if dni in clientes.keys():
        clientes.pop(dni)
    else:
        print('Cliente no encontrado...')

def consultar():
    dni = input('DNI: ')
    if dni in clientes.keys():
        print(datos(dni, clientes[dni]))
    else:
        print('Cliente no encontrado...')

def datos(dni, cliente):
    return f"{dni}, {cliente['nom']}, {cliente['dir']}, {cliente['tel']}, {cliente['mail']}, {cliente['pref']}"

def listar_pref():
    for elem in clientes.items():
        if elem[1]['pref']:
            print(datos(elem[0], elem[1]))

def listar():
    for elem in clientes.items():
        print(datos(elem[0], elem[1]))
                
menu()