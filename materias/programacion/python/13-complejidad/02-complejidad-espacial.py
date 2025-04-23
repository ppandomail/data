# O(n)
def crear_lista(n):
    lista = []
    for i in range(n):
        lista.append(i)
    return lista

n = 100000
lista = crear_lista(n)
print(f"Memoria utilizada: {lista.__sizeof__()} bytes")