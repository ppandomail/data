'''
Escribir un programa que pida al usuario un número entero positivo y muestre por
pantalla la cuenta atrás desde ese número hasta cero separados por comas
'''

#numero = int(input('Número: '))
#cuenta_atras = ''
#for i in range(0, numero+1):
#    cuenta_atras += str(i) + ','
#print(cuenta_atras[::-1][1:])

print([i for i in range(0, int(input('Número: '))+2)][::-1][1:])