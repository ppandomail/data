'''
TABLAS HASH. Cuenta la frecuencia de palabras en una cadena
'''
# (K, V)
def tabla_hash(cadena):
    frecuencias = {}
    for palabra in cadena.split(' '):
        frecuencias[palabra] = (1 if palabra not in frecuencias else (frecuencias[palabra] + 1 ))
    return frecuencias

print(tabla_hash('hola mi nombre es Pablo y el nombre de el es Juan'))