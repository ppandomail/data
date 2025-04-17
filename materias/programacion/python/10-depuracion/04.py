listin = {'Juan': 123456789, ' Pedro': 987654321}

def elimina(listin, usuario) :
    del listin[usuario]
    return listin[usuario]

print(elimina(listin, 'Pablo'))