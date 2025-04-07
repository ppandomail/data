'''
Escribir un programa que reciba una cadena de caracteres y devuelva un
diccionario con cada palabra que contiene y su frecuencia. Escribir otra función
que reciba el diccionario generado con la función anterior y devuelva una tupla con
la palabra más repetida y su frecuencia.
'''

def generar_diccionario_frecuencia(frase):
    dicc = {}
    palabras = frase.split()
    for i in range(0, len(palabras)):
        if palabras[i] in dicc:
            dicc[palabras[i]] += 1
        else:
            dicc[palabras[i]] = 1
    return dicc

def palabra_mas_repetida(dicc):
    max = 0
    for palabra in dicc.items():
        if palabra[1] > max:
            max = palabra[1]
            tupla = palabra
    return tupla


dicc = generar_diccionario_frecuencia('Mi nombre es Pablo y el nombre de ella es Ana')
print(dicc)
print(palabra_mas_repetida(dicc))