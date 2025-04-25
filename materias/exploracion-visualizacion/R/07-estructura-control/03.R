# Suma de Números
# Escribir un código que use un bucle for para 
# calcular la suma de los primeros 100 números enteros 
# Imprime el resultado

suma_numeros <- function() {
  acum <- 0
  for (i in 1:100)
    acum <- acum + i
  print(acum)
}

suma_numeros()