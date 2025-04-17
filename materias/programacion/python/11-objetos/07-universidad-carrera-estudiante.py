'''
Desarrollar un programa con tres clases:
La primera debe ser Universidad, con atributos nombre (nombre de la Universidad). 
La segunda llamada Carerra, con los atributos especialidad (especialidad de un 
estudiante). Y por último, una llamada Estudiante, que tenga como atributos su 
nombre y edad. El programa debe imprimir la especialidad, edad, nombre y 
universidad de dicho estudiante con un objeto llamado persona
'''

class Universidad:

    def __init__(self, nombre):
        self.nombre = nombre

class Carrera:

    def __init__(self, especialidad):
        self.especialidad = especialidad

class Estudiante:

    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad
    
def persona(universidad, carrera, estudiante):
    return f'Universidad: {universidad.nombre}, Carrera: {carrera.especialidad}, Estudiante: {estudiante.nombre}, Edad: {estudiante.edad}'

universidad = Universidad('UNO')
carrera = Carrera('Esp en Cs de Datos')
estudiante = Estudiante('Pablo Pandolfo', 49)
print(persona(universidad, carrera, estudiante))