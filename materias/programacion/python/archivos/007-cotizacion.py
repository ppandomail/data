'''
El fichero cotizacion.csv contiene las cotizaciones de las empresas del IBEX35 con
las siguientes columnas: Nombre (nombre de la empresa), Final (precio de la
acción al cierre de bolsa), Máximo (precio máximo de la acción durante la
jornada), Mínimo (precio mínimo de la acción durante la
jornada), Volumen (Volumen al cierre de bolsa), Efectivo (capitalización al cierre en
miles de euros).
1. Construir una función que reciba el archivo de cotizaciones y devuelva un
diccionario con los datos del archivo por columnas.
2. Construir una función que reciba el diccionario devuelto por la función
anterior y cree un archivo en formato csv con el mínimo, el máximo y la media
de dada columna.
'''

def generar_dicc_cotizaciones(archivo):
    dicc = {}
    arch = open(archivo, 'r')
    lineas = arch.readlines()
    for linea in lineas:
        lparser = linea.split(';')
        datos = {}
        datos['final'] = lparser[1]
        datos['max'] = lparser[2]
        datos['min'] = lparser[3]
        datos['vol'] = lparser[4]
        dicc[lparser[0]] = datos
    return dicc

def calcular_data(dicc):
    pass
