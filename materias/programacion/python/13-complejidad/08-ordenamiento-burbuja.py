# O(n²)
def ordenamiento_burbuja(lista):
    for i in range(len(lista) - 1):
        for j in range(len(lista) - 1 - i):
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    return lista

lista = [5, 3, 8, 4, 2]
print(ordenamiento_burbuja(lista))  # Devuelve [2, 3, 4, 5, 8]