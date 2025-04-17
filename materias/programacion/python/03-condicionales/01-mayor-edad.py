'''
Escribir un programa que pregunte al usuario su edad y muestre por pantalla si es
mayor de edad o no
'''

#edad = int(input('Edad: '))
#if edad >= 18:
#    print('Mayor de edad')
#else:
#    print('Menor de edad')

print('Mayor de edad' if int(input('Edad: ')) >= 18 else 'Menor de edad')