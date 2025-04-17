'''
TABLAS HASH. Detecta si hay elementos duplicados en una lista usando una tabla
hash
'''

def has_duplicados_recorre_toda_la_lista(lista):
    conjunto = set()
    for elemento in lista:
        conjunto.add(elemento)
    return len(conjunto) < len(lista)

def has_duplicados_recorre_hasta_el_primer_duplicado(lista):
    aux = []
    for elemento in lista:
        if elemento in aux:
            return True
        aux.append(elemento)
    return False

print(has_duplicados_recorre_toda_la_lista([1, 2, 3, 4, 5]))
print(has_duplicados_recorre_toda_la_lista([1, 2, 3, 4, 3]))
print(has_duplicados_recorre_hasta_el_primer_duplicado([1, 2, 3, 4, 5]))
print(has_duplicados_recorre_hasta_el_primer_duplicado([1, 2, 3, 4, 3]))