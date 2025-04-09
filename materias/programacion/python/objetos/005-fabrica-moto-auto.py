'''
Crear una clase Fabrica que tenga los atributos de Llantas, Color y Precio.
Luego crear dos clases más que hereden de Fabrica, las cuales son Moto y Auto.
Crear métodos que muestren la cantidad de llantas, color y precio de ambos 
transportes. Por último, crear objetos para cada clase y mostrar por pantalla 
los atributos de cada uno.
'''

class Fabrica:

    def __init__(self, llantas, color, precio):
        self.llantas = llantas
        self.color = color
        self.precio = precio
    
    def mostrar_llantas(self):
        print('Llantas: ' + str(self.llantas))
    
    def mostrar_color(self):
        print('Color: ' + self.color)
    
    def mostrar_precio(self):
        print('Precio: ' + str(self.precio))

class Moto(Fabrica):

    def __init__(self, llantas, color, precio):
        super().__init__(llantas, color, precio)

class Auto(Fabrica):

    def __init__(self, llantas, color, precio):
        super().__init__(llantas, color, precio)

fabrica = Fabrica(4, 'rojo', 1234.56)
moto = Moto(2, 'negro', 12.34)
auto = Auto(4, 'gris', 123.45)

fabrica.mostrar_llantas()
fabrica.mostrar_color()
fabrica.mostrar_precio()

moto.mostrar_llantas()
moto.mostrar_color()
moto.mostrar_precio()

auto.mostrar_llantas()
auto.mostrar_color()
auto.mostrar_precio()