'''
Realizar un programa que conste de una clase llamada Estudiante, que tenga 
como atributos el nombre y la nota del alumno. Definir los métodos para 
inicializar sus atributos, imprimirlos y mostrar un mensaje con el resultado 
de la nota y si ha aprobado o no
'''

class Estudiante:

    def __init__(self, nombre, nota):
        self.nombre = nombre
        self.nota = nota
    
    def imprimir(self):
        print(f'Nombre: {self.nombre}')
        print(f'Nota: {self.nota}')
    
    def resultado(self):
        print('aprobado' if self.nota >= 4 else 'desaprobado')

estudiante_1 = Estudiante('Pablo', 8)
estudiante_2 = Estudiante('Ana', 2)

estudiante_1.imprimir()
estudiante_1.resultado()

estudiante_2.imprimir()
estudiante_2.resultado()