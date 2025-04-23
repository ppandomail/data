# O (log n)
def busqueda_binaria(lista, objetivo):
    inicio = 0
    fin = len(lista) - 1
    
    while inicio <= fin:
        medio = (inicio + fin) // 2
    
        if lista[medio] == objetivo:
            return medio
        elif lista[medio] < objetivo:
            inicio = medio + 1
        else:
            fin = medio - 1
    
    return -1

lista = [1, 3, 5, 7, 9]
objetivo = 7
print(busqueda_binaria(lista, objetivo))  # Devuelve el índice 3