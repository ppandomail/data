'''
Escribir un programa para una empresa que tiene salas de juegos para todas las
edades y quiere calcular de forma automática el precio que debe cobrar a sus
clientes por entrar. El programa debe preguntar al usuario la edad del cliente y
mostrar el precio de la entrada. Si el cliente es menor de 4 años puede entrar gratis,
si tiene entre 4 y 18 años debe pagar 10500 ARS y si es mayor de 18 años, 14000
ARS
'''

edad = int(input('Edad: '))
if edad < 4:
    precio = 'Gratis'
elif edad < 18:
    precio = 'AR$ 10500'
else:
    precio = 'AR$ 14000'
print(f'Precio entrada: {precio}')