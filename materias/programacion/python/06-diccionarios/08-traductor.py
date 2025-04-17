'''
Escribir un programa que cree un diccionario de traducción español-inglés. El
usuario introducirá las palabras en español e inglés separadas por dos puntos, y
cada par <palabra>:<traducción> separados por comas. El programa debe crear un
diccionario con las palabras y sus traducciones. Después pedirá una frase en
español y utilizará el diccionario para traducirla palabra a palabra. Si una palabra
no está en el diccionario debe dejarla sin traducir
'''

diccionario = {}
palabras_usuario = input('Palabras (español:ingles,...): ')
palabras = palabras_usuario.split(',')
for i in range(0, len(palabras)):
    traduccion = palabras[i].split(':')
    diccionario[traduccion[0]] = traduccion[1]
frase = input('Frase: ')
frase_parse = frase.split()
frase_traducida = ''
for i in range(0, len(frase_parse)):
    if frase_parse[i] not in diccionario:
        frase_traducida += f'{frase_parse[i]} '
    else:
        frase_traducida += f'{diccionario.get(frase_parse[i])} '
print(frase_traducida)