'''
GRAFOS. Haz un recorrido en anchura (BFS) sobre un grafo
'''

from collections import deque

# G<V,A>
grafo = {
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F'],
    'D': [],
    'E': [],
    'F': []
}

# BFS (Breadth First Search / Búsqueda en Anchura)
def bfs(inicio):
    visitados = set()
    cola = deque([inicio])

    while cola:
        nodo = cola.popleft()
        if nodo not in visitados:
            print(nodo, end=' ')
            visitados.add(nodo)
            cola.extend(grafo[nodo])

bfs('A')  # A B C D E F