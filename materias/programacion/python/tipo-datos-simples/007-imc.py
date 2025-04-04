peso = float(input('Peso (en kg): '))
estatura = float(input('Estatura (en metros): '))
imc = round(peso / pow(estatura, 2), 2)
print('Tu índice de masa corporal es ' + str(imc))