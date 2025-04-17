'''
Escribir una función que convierta un número decimal en binario y otra que
convierta un número binario en decimal
'''

def decimal_a_binario(decimal):
    binario = 0
    multiplicador = 1
    while decimal != 0:
        binario += decimal % 2 * multiplicador
        decimal //= 2
        multiplicador *= 10
    return binario

def binario_a_decimal(binario):
	decimal = 0 
	for posicion, digito_string in enumerate(binario[::-1]):
		decimal += int(digito_string) * 2 ** posicion
	return decimal


print(decimal_a_binario(5))
print(decimal_a_binario(35))
print(decimal_a_binario(22301))

print(binario_a_decimal('101'))
print(binario_a_decimal('100011'))
print(binario_a_decimal('101011100011101'))