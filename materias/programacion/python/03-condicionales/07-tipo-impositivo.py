'''
Los tramos impositivos para la declaración de la renta anual en un determinado
país son los siguientes:
Renta                        Tipo impositivo
Menos de 10000 USD             5%
Entre 10000 USD y 20000 USD    15%
Entre 20000 USD y 35000 USD    20%
Entre 35000 USD y 60000 USD    30%
Más de 60000            USD    45%
Escribir un programa que pregunte al usuario su renta anual y muestre por pantalla
el tipo impositivo que le corresponde
'''

renta_anual = float(input('Renta anual USD: '))
if renta_anual < 10000:
    print('5%')
elif renta_anual < 20000:
    print('15%')
elif renta_anual < 35000:
    print('20%')
elif renta_anual < 60000:
    print('30%')
else:
    print('45%')