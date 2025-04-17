'''
Escribir un programa que almacene las asignaturas de un curso (por ejemplo,
Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario
la nota que ha sacado en cada asignatura y elimine de la lista las asignaturas
aprobadas. Al final el programa debe mostrar por pantalla las asignaturas que el
usuario tiene que repetir
'''

materias = ['Matemática', 'Física', 'Química', 'Historia', 'Lengua']
notas = []
materias2 = []

for i in range(0, len(materias)):
    notas.append(int(input(f'Nota para {materias[i]} : ')))
    materias2.append(materias[i])


for i in range(0, len(notas)):
    if notas[i] >= 4:
        materias.remove(materias2[i])

print(materias)