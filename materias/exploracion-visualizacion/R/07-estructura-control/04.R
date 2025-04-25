# Contador de Números Pares
# Crear un script que utilice un bucle while 
# para contar cuántos números pares hay entre 1 y 50
# Imprimir el total de números pares encontrados

pares <- function() {
  i <- 1
  cont <- 0
  while (i <= 50) {
    if (i %% 2 == 0) {
      cont <- cont + 1
    }
    i <- i + 1
  }
  print(cont)
}

pares()

