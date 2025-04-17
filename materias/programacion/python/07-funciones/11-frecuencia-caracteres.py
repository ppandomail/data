'''
Escribir un programa que reciba una cadena de caracteres y devuelva un
diccionario con cada palabra que contiene y su frecuencia. Escribir otra función
que reciba el diccionario generado con la función anterior y devuelva una tupla con
la palabra más repetida y su frecuencia
'''

def generar_diccionario_frecuencia(frase):
    dicc = {}
    for palabra in frase.split():
        dicc[palabra] = (dicc[palabra] + 1) if palabra in dicc else 1
    return dicc

def palabra_mas_repetida(dicc):
    max = 0
    for palabra, frec in dicc.items():
        if frec > max:
            max = frec
            palabra_max = palabra
    return palabra_max


dicc = generar_diccionario_frecuencia('Mi nombre es Pablo y el nombre de ella es Ana')
print(dicc)
print(palabra_mas_repetida(dicc))