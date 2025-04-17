'''
Escribir una función que reciba un número entero positivo y devuelva su factorial
'''

def factorial(numero):
    factorial = 1
    for i in range(1, numero):
        factorial += factorial * i
    return factorial

print(factorial(0))
print(factorial(1))
print(factorial(2))
print(factorial(3))
print(factorial(4))
print(factorial(5))