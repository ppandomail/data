'''
PILAS. Verifica si una cadena tiene paréntesis correctamente balanceados
'''

# LIFO
def is_parentesis_balanceados(cadena):
    pila = []
    for caracter in cadena:
        if caracter == '(':
            pila.append(caracter)
        if caracter == ')' and len(pila) == 0:
            return False
        if caracter == ')':
            pila.pop()
    return len(pila) == 0

print(is_parentesis_balanceados(''))
print(is_parentesis_balanceados('('))
print(is_parentesis_balanceados(')'))
print(is_parentesis_balanceados('()'))
print(is_parentesis_balanceados('()()'))
print(is_parentesis_balanceados('(())'))
print(is_parentesis_balanceados(')('))
print(is_parentesis_balanceados('(()'))
print(is_parentesis_balanceados('(()())'))
print(is_parentesis_balanceados('()(())'))