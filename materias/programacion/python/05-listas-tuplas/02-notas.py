'''
Escribir un programa que almacene las asignaturas de un curso (por ejemplo
Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario
la nota que ha sacado en cada asignatura, y después las muestre por pantalla con
el mensaje En <asignatura> has sacado <nota> donde <asignatura> es cada una de
las asignaturas de la lista y <nota> cada una de las correspondientes notas
introducidas por el usuario
'''

materias = ['Matemática', 'Física', 'Química', 'Historia', 'Lengua']
notas = []

for i in range(0, len(materias)):
    notas.append(int(input(f'Nota para {materias[i]} : ')))

for i in range(0, len(materias)):
    print(f'En {materias[i]} has sacado {notas[i]}')