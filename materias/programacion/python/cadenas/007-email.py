'''
Escribir un programa que pregunte el correo electrónico del usuario en la consola y
muestre por pantalla otro correo electrónico con el mismo nombre (la parte delante
de la arroba @) pero con dominio argentina.ar.
'''

email = input('Email: ')
print(email.split('@')[0] + '@argentina.ar')