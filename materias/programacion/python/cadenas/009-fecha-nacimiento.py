'''
Escribir un programa que pregunte al usuario la fecha de su nacimiento en
formato dd/mm/aaaa y muestra por pantalla, el día, el mes y el año.
'''

fnac = input('Fecha de nacimiento (dd/mm/aaaa): ')
fnac = fnac.split('/')
print('Dia: ' + fnac[0])
print('Mes: ' + fnac[1])
print('Año: ' + fnac[2])