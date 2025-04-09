'''
Realizar un programa en el cual se declaren dos valores enteros por 
teclado utilizando el método __init__. Calcular después la suma, resta, 
multiplicación y división. Utilizar un método para cada una e imprimir los 
resultados obtenidos. Llamar a la clase Calculadora.
'''

class Calculadora:

    def __init__(self):
        self.n1 = int(input('Número 1: '))
        self.n2 = int(input('Número 2: '))
    
    def sumar(self):
        return self.n1 + self.n2
    
    def restar(self):
        return self.n1 - self.n2
    
    def multiplicar(self):
        return self.n1 * self.n2
    
    def dividir(self):
        if self.n2 != 0:
            return self.n1 / self.n2
        return 0
    
calc = Calculadora()
print(calc.sumar())
print(calc.restar()) 
print(calc.multiplicar())
print(calc.dividir())