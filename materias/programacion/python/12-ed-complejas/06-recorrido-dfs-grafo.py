'''
GRAFOS. Representa un grafo con lista de adyacencia y haz un recorrido DFS
'''

# G<V,A>
grafo = {
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F'],
    'D': [],
    'E': ['F'],
    'F': []
}

# DFS (Depth First Search / Búsqueda en Profundidad)
def dfs(nodo, visitados=set()):
    if nodo not in visitados:
        print(nodo, end=' ')
        visitados.add(nodo)
        for vecino in grafo[nodo]:
            dfs(vecino, visitados)

dfs('A')  # A B D E F C