'''
Escribir un programa para gestionar un listado telefónico con los nombres y los
teléfonos de los clientes de una empresa. El programa debe incorporar funciones
crear el fichero con el listín si no existe, para consultar el teléfono de un cliente,
añadir el teléfono de un nuevo cliente y eliminar el teléfono de un cliente. El listado
debe estar guardado en el archivo de texto listado.txt donde el nombre del cliente y
su teléfono deben aparecer separados por comas y cada cliente en una línea
distinta.
'''

mapa = {}

def menu():
    opc = 0
    leer_archivo()
    while (opc != 4):
        if opc == 1:
            agregar()
        if opc == 2:
            eliminar()
        if opc == 3:
            consultar()
        if opc != 0:
            input()
        print()
        print('--------MENU---------')
        print('1. Agregar teléfono')
        print('2. Eliminar teléfono')
        print('3. Consultar teléfono')
        print('4. Salir')
        print()
        opc = int(input('?- '))
    guardar()

def leer_archivo():
    try:
        arch = open('listado.txt', 'r')
        for linea in arch.readlines():
            lparser = linea.split(';')
            mapa[lparser[0]] = lparser[1]
        arch.close()
    except FileNotFoundError:
        open('listado.txt', 'w')
        
def agregar():
    cli = input('Cliente: ')
    tel = input('Tel. :')
    mapa[cli] = tel

def eliminar():
    cli = input('Cliente: ')
    if cli in mapa.keys():
        mapa.pop(cli)
    else:
        print('Cliente no encontrado...')

def consultar():
    cli = input('Cliente: ')
    if cli in mapa.keys():
        print('Tel.: ' + mapa[cli])
    else:
        print('Cliente no encontrado...')

def guardar():
    arch = open('listado.txt', 'w')
    for item in mapa.items():
        arch.write(item[0] + ',' + item[1] + '\n')
    arch.close()

menu()