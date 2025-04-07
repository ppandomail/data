'''
Escribir una función que reciba una frase y devuelva un diccionario con las palabras
que contiene y su longitud.
'''

def generar_dicc_palabras_longitud(frase):
    dicc = {}
    palabras = frase.split()
    for palabra in palabras:
        dicc[palabra] = len(palabra)
    return dicc

print(generar_dicc_palabras_longitud('oid mortales el grito sagrado'))