'''
Escribir una función reciba un diccionario con las asignaturas y las notas de un
alumno y devuelva otro diccionario con las asignaturas en mayúsculas y las
calificaciones correspondientes a las notas.
'''



def calificaciones(dicc):
    return dict(map(lambda kv : (mayusculas(kv[0]), 'aprobado' if kv[1] >= 4 else 'desaprobado'), dicc.items()))

def mayusculas(nombre):
    return nombre.upper()

print(calificaciones({'matematicas': 8, 'ingles': 7, 'biologia': 2, 'lengua': 4}))