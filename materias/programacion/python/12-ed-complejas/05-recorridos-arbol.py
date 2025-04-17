'''
ÁRBOLES BINARIOS. Implementa recorridos inorder, preorder y postorder
'''

class Nodo:
    def __init__(self, valor):
        self.valor = valor
        self.izq = None
        self.der = None
    
def inorder(nodo):
    if nodo:
        inorder(nodo.izq)
        print(nodo.valor, end=' ')
        inorder(nodo.der)

def preorder(nodo):
    if nodo:
        print(nodo.valor, end=' ')
        preorder(nodo.izq)
        preorder(nodo.der)

def postorder(nodo):
    if nodo:
        preorder(nodo.izq)
        preorder(nodo.der)
        print(nodo.valor, end=' ')

raiz = Nodo(1)
raiz.izq = Nodo(2)
raiz.der = Nodo(3)
raiz.izq.izq = Nodo(4)
raiz.izq.der = Nodo(5)

inorder(raiz)    # 4 2 5 1 3
print()
preorder(raiz)   # 1 2 4 5 3
print()
postorder(raiz)  # 2 4 5 3 1