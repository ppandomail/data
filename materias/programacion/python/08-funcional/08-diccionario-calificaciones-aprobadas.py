'''
Escribir una función reciba un diccionario con las asignaturas y las notas de un
alumno y devuelva otro diccionario con las asignaturas en mayúsculas y las
calificaciones correspondientes a las notas aprobadas
'''

def calificaciones_aprobadas(dicc):
    dicc  = dict(map(lambda kv : (mayusculas(kv[0]), 'aprobado' if kv[1] >= 4 else 'desaprobado'), dicc.items()))
    return dict(filter(aprobadas, dicc.items()))

def mayusculas(nombre):
    return nombre.upper()

def aprobadas(tupla):
    return tupla[1] == 'aprobado'

print(calificaciones_aprobadas({'matematicas': 8, 'ingles': 7, 'biologia': 2, 'lengua': 4}))
