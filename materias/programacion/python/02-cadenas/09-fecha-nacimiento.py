'''
Escribir un programa que pregunte al usuario la fecha de su nacimiento en
formato dd/mm/aaaa y muestra por pantalla, el día, el mes y el año
'''

dia, mes, anio = input('Fecha de nacimiento (dd/mm/aaaa): ').split('/')
print(f'Dia: {dia}', f'Mes: {mes}', f'Año: {anio}', sep='\n')