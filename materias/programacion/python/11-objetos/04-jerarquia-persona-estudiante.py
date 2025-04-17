'''
Crear una clase Persona con los atributos nombre y apellido que sea la clase 
padre de otra clase Estudiante. Además, dicha clase, debe tener un método 
para mostrar nombre_completo() el cual debe mostrar el nombre acompañado del 
apellido. La clase Estudiante, debe tener como atributos edad y carrera y 
además contar con un método mostrar_carrera()
'''

class Persona:

    def __init__(self, nombre, apellido):
        self.nombre = nombre
        self.apellido = apellido
    
    def nombre_completo(self):
        print(f'{self.nombre} {self.apellido}')

class Estudiante(Persona):

    def __init__(self, nombre, apellido, edad, carrera):
        super().__init__(nombre, apellido)
        self.edad = edad
        self.carrera = carrera
    
    def mostrar_carrera(self):
        print(self.carrera)

persona = Persona('Pablo', 'Pandolfo')
persona.nombre_completo()

estudiante = Estudiante('Mariano', 'Castroman', 45, 'informática')
estudiante.nombre_completo()
estudiante.mostrar_carrera()