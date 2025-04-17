def aplica_iva (base, iva = 21) :
    base = base * iva
    return base

base = float(input ('Introduce la base imponible de la factura: '))  # float
iva = 10 # se agrega
print(aplica_iva(base, iva)) # se baja