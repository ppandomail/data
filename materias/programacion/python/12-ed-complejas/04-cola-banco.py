'''
COLAS. Simula la atención de clientes en un banco con una cola
'''

from collections import deque

clientes = deque(["Ana", "Luis", "Pedro", "Lucía"])

while clientes:
    print(f"Atendiendo a {clientes.popleft()}")