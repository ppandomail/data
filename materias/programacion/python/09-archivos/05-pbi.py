'''
Escribir un programa que abra el archivo con información sobre el PBI per cápita de
los países de la Unión Europea (url:https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?file=data/sdg_08_10.tsv.gz&unzip=true),
pregunte por las iniciales de un país y muestre el PBI per cápita de ese país de todos
los años disponibles
'''

import urllib.request

response = urllib.request.urlopen('https://infra.datos.gob.ar/georef/provincias.json') 
print(response.read())