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

def generar_dicc_palabras_longitud2(frase):
    return {value: len(value) for value in frase.split()} 

print(generar_dicc_palabras_longitud('oid mortales el grito sagrado'))
print(generar_dicc_palabras_longitud2('oid mortales el grito sagrado'))