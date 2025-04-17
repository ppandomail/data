'''
Escribir un programa que acceda a un archivo de internet mediante su url y muestre
por pantalla el número de palabras que contiene
'''

import urllib.request

response = urllib.request.urlopen('https://www.python.org/') 
print(len(response.read().split()))