'''
PILAS. Invierte una cadena usando solo operaciones de pila
'''

def invertir(cadena):
    pila = list(cadena)
    pila_aux = []
    while (len(pila)):
        pila_aux.append(pila.pop())
    return "".join(pila_aux)

print(invertir('pablo'))