'''
ÁRBOLES BINARIOS. Implementa recorridos inorder, preorder y postorder.

class Nodo:
    def __init__(self, valor):
        self.valor = valor
        self.izq = None
        self.der = None

raiz = Nodo(1)
raiz.izq = Nodo(2)
raiz.der = Nodo(3)
raiz.izq.izq = Nodo(4)
raiz.izq.der = Nodo(5)

inorder(raiz)    # 4 2 5 1 3
'''