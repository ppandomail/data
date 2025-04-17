'''
COLAS. Implementa una cola con las operaciones básicas: enqueue, dequeue,
peek
'''

from collections import deque

# FIFO
class Cola:

        def __init__(self):
                self.cola = deque()
        
        def acolar(self, dato):
                self.cola.append(dato)
        
        def desacolar(self):
                self.cola.popleft()
        
        def ver(self):
                return self.cola[0]
        
        def vacia(self):
                return len(self.cola) == 0
        
cola = Cola()
print(cola.vacia())
cola.acolar(2)
cola.acolar(4)
cola.acolar(3)
print(cola.ver())
cola.desacolar()
print(cola.ver())
print(cola.vacia())