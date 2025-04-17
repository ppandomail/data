'''
Escribir un programa que guarde en una variable el diccionario {'Euro':'€', 'Dollar':'$',
'Yen':'¥'}, pregunte al usuario por una divisa y muestre su símbolo o un mensaje de
aviso si la divisa no está en el diccionario
'''
divisas = {'Euro':'€', 'Dollar':'$', 'Yen':'¥'}
divisa = input('Divisa: ')
simbolo = divisas.get(divisa) 
print('Divisa no esta en el diccionario' if simbolo is None else simbolo)