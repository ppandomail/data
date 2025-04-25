# Generación de Números Aleatorios
# Escribir un código que use un bucle repeat para generar números aleatorios 
# entre 1 y 100 hasta que se genere un número mayor a 90
# Imprimir todos los números generados

aleatorios <- function() {
  repeat {
    n <- sample(1:100, 1, replace=TRUE)
    if (n > 90) break
    print(n)
  }
}

aleatorios()
