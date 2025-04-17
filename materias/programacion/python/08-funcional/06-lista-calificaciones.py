'''
Escribir una función reciba una lista de notas y devuelva la lista de calificaciones
correspondientes a esas notas
'''

def calificaciones(lista):
    return list(map(lambda elem : ('aprobado' if elem >= 4 else 'desaprobado'), lista))

print(calificaciones([8, 7, 2, 4]))