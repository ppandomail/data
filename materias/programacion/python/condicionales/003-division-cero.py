'''
Escribir un programa que pida al usuario dos números y muestre por pantalla su
división. Si el divisor es cero el programa debe mostrar un error.
'''

#op1 = float(input('Operando 1: '))
#op2 = float(input('Operando 2: '))
#if op2 == 0:
#    print('Error al dividir por 0')
#else:
#    print(str(op1/op2))

op1 = float(input('Operando 1: '))
op2 = float(input('Operando 2: '))
print('Error al dividir por 0' if op2 == 0 else str(op1/op2))