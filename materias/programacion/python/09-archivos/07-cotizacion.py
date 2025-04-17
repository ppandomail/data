'''
El fichero cotizacion.csv contiene las cotizaciones de las empresas del IBEX35 con
las siguientes columnas: Nombre (nombre de la empresa), Final (precio de la
acción al cierre de bolsa), Máximo (precio máximo de la acción durante la
jornada), Mínimo (precio mínimo de la acción durante la
jornada), Volumen (Volumen al cierre de bolsa), Efectivo (capitalización al cierre en
miles de euros)
1. Construir una función que reciba el archivo de cotizaciones y devuelva un
diccionario con los datos del archivo por columnas
2. Construir una función que reciba el diccionario devuelto por la función
anterior y cree un archivo en formato csv con el mínimo, el máximo y la media
de dada columna
'''

def generar_dicc_cotizaciones(archivo):
    dicc = {}
    arch = open(archivo, 'r')
    lineas = arch.readlines()
    for linea in lineas:
        lparser = linea.split(';')
        datos = {}
        datos['final'] = float(lparser[1])
        datos['max'] = float(lparser[2])
        datos['min'] = float(lparser[3])
        datos['vol'] = float(lparser[4])
        datos['efvo'] = float(lparser[5])
        dicc[lparser[0]] = datos
    return dicc

def calcular_data(dicc):
    lista_fin = []
    lista_max = []
    lista_min = []
    lista_vol = []
    lista_efvo = []
    for cotizacion in dicc.items():
        for col in cotizacion[1].items():
            if col[0] == 'final':
                lista_fin.append(col[1])
            if col[0] == 'max':
                lista_max.append(col[1])
            if col[0] == 'min':
                lista_min.append(col[1])
            if col[0] == 'vol':
                lista_vol.append(col[1])
            if col[0] == 'efvo':
                lista_efvo.append(col[1])
    arch = open('estadisticas.csv', 'w')
    arch.write('Final;' + str(max(*lista_fin)) + ';' + str(min(*lista_fin)) + ';' + str(sum(lista_fin)/len(lista_fin)) + '\n')
    arch.write('Máximo;' + str(max(*lista_max)) + ';' + str(min(*lista_max)) + ';' + str(sum(lista_max)/len(lista_max)) + '\n')
    arch.write('Mínimo;' + str(max(*lista_min)) + ';' + str(min(*lista_min)) + ';' + str(sum(lista_min)/len(lista_min)) + '\n')
    arch.write('Volumen;' + str(max(*lista_vol)) + ';' + str(min(*lista_vol)) + ';' + str(sum(lista_vol)/len(lista_vol)) + '\n')
    arch.write('Efectivo;' + str(max(*lista_efvo)) + ';' + str(min(*lista_efvo)) + ';' + str(sum(lista_efvo)/len(lista_efvo)) + '\n')
          
calcular_data(generar_dicc_cotizaciones('cotizacion.csv'))