# CTRL + ENTER: Run
x <- 1
x
print(x)
mode(x)
length(x)
rm(x)
print(x)
y <- 2
ls()

2 + 2   #Suma
2 - 2   #Resta
2 * 2   #Multiplicación
2 / 2   #División
2 ^ 2   #Potencia
2 %/% 2 #Parte entera de la división de x por y
2 %% 2  #Resto/residuo

sqrt(9) # raíz cuadrada
exp(-1)  # exponencial
log(100) # logaritmo natural"
log10(10) # Logaritmo base 10 
abs(-2) # valor absoluto

sum(c(2, 4))  # suma todos los elementos de x
prod(c(2, 4)) # producto de todos los elementos de x 
round(3.424, 2) # redondea cada valor de y a un decimal

2^2048
0/0

# Ej 1
calc_1 <- (45/5 - 5) * 10
calc_1

# Ej 2
estatura <- 1.74
peso <- 82
imc <- peso / estatura
imc

# Ej 3
imc ^ 3

# Ej 4
log(imc) <= 0

# Ej 5
5 + (3 * 10) %/% 3

nombre <- "Datos"
length(nombre)

x <- c(0.5, 0.6) # numérico
x <- c(TRUE, FALSE) # lógico
x <- c(T, F) ## logical
x <- c("a", "b", "c") # caracter
x <- c(1, 2, 3, 4) # entero
x <- c(1+0i, 2+4i) # complejo

x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x <- 1:10 # otra manera de crear el mismo vector
x <- seq(1, 10, 1) # la función seq puede crear 
# secuencias de n° reales
x <- vector(mode = "numeric", length = 5) # vector numérico con 0 de longitud 5.

x <- factor(c("si", "si", "no", "si", "no")) 
table(x) # con la función "table" armamos una tabla de frecuencias.



