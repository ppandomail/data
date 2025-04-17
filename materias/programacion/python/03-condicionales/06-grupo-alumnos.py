'''
Los alumnos de un curso se han dividido en dos grupos A y B de acuerdo con el sexo
y el nombre. El grupo A está formado por las mujeres con un nombre anterior a la M
y los hombres con un nombre posterior a la N y el grupo B por el resto. Escribir un
programa que pregunte al usuario su nombre y sexo, y muestre por pantalla el grupo
que le corresponde
'''

#nombre = input('Nombre: ')
#sexo = input('Sexo (M/V): ')
#if (sexo == 'M' and nombre[0] < 'M') or (sexo == 'V' and nombre[0] > 'N'):
#    print('Grupo A')
#else:
#    print('Grupo B')

letra = input('Nombre: ')[0]
sexo = input('Sexo (M/V): ')
print('Grupo A' if (sexo == 'M' and letra < 'M') or (sexo == 'V' and letra > 'N') else 'Grupo B')