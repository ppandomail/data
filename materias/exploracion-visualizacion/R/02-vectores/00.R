# Vectores: elementos del mismo tipo

x <- c(0.5, 0.6)      # numérico
x <- c(TRUE, FALSE)   # lógico
x <- c(T, F)          # logical
x <- c("a", "b", "c") # caracter
x <- c(1, 2, 3, 4)    # entero
x <- c(1+0i, 2+4i)    # complejo

x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x <- 1:10                                 # otra manera de crear el mismo vector
x <- seq(1, 10, 1)                        # la función seq puede crear secuencias de n° reales
x <- vector(mode = "numeric", length = 5) # vector numérico con 0 de longitud 5

x <- factor(c("si", "si", "no", "si", "no")) 
table(x)                                  # arma tabla de frecuencias
unclass(x)                                # vector sin las etiquetas

x[3]           # posición 3
x[1:5]         # posiciones del 1 al 5

x[c(2, 4, 6)]  # posciones 2, 4 y 6
x[c(4, 6, 2)]  # misma posiciones sin necesidad de que estén ordenados

x[-1]          # todas las posiciones del vector menos la 1