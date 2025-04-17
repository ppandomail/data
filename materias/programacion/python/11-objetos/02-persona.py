'''
Crea una clase Persona. Con atributos nombre y edad. Además, crear un 
método cumpleaños, que aumente en 1 la edad de la persona cuando se 
invoque sobre un objeto creado con Persona
'''

class Persona:

    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad
    
    def cumpleaños(self):
        self.edad += 1
    
    def __str__(self):
        return f'{self.nombre} -> {self.edad}'

persona_1 = Persona('Pablo', 49)
print(persona_1)
persona_1.cumpleaños()
print(persona_1)