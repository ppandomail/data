'''
Una juguetería tiene mucho éxito en dos de sus productos: autos y muñecas. Suele
hacer venta por correo y la empresa de logística les cobra por peso de cada paquete
así que se debe calcular el peso de los autos y muñecas que saldrán en cada
paquete a demanda. Cada auto pesa 112 g y cada muñeca 75 g. Escribir un
programa que lea el número de autos y muñecas vendidos en el último pedido y
calcule el peso total del paquete que será enviado
'''

cant_autos = int(input('Cantidad de autos: '))
cant_muñecas = int(input('Cantidad de muñecas: '))
peso_auto = 112
peso_muñeca = 75
peso_total = cant_autos * peso_auto + cant_muñecas * peso_muñeca
print(peso_total)