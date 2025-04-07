'''
Escribir un programa que almacene el diccionario con los créditos de las
asignaturas de un curso {'Matemáticas': 6, 'Física': 4, 'Química': 5} y después
muestre por pantalla los créditos de cada asignatura en el formato <asignatura>
tiene <créditos> créditos, donde <asignatura> es cada una de las asignaturas del
curso, y <créditos> son sus créditos. Al final debe mostrar también el número total
de créditos del curso.
'''

creditos = {'Matemáticas': 6, 'Física': 4, 'Química': 5}
total_creditos = 0
for asignatura in creditos.items():
    print(asignatura[0] + ' tiene ' + str(asignatura[1]) + ' créditos')
    total_creditos += asignatura[1]
print('Total de créditos del curso: ' + str(total_creditos))