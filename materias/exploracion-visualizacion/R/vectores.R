# Construir un vector del 1 al 10 y guardarlo en una variable “x”
x <- 1:10

# Construir un vector del 1 al 20, cada dos unidades y guardarlo en una variable “y”.
y <- seq(1, 20, 2)

# Sumar “x” con “y”.
z <- x + y

# Restarle al vector “y” las primeras dos posiciones del vector “x”.
y = y - x[c(1,2)]

# Agregarle al vector “x” los valores de “y” que sean mayores a 5 y guardarlo en una nueva variable.
for (e in y) 
  if (e > 5)
    z <- append(x, e)

# Eliminar la primera posición del vector y.
y <- y[-1]

# Eliminar la última posición del vector y.
y <- y[-length(y)]

# Sumar todos los valores de “y” menos el último.
acum <- 0
i <- 1
while (i < length(y)) {
  acum <- acum + y[i]
  i <- i + 1
}

acum

Sum(y[-length(y)])

# Agregarle un Na al vector “x” en las posiciones 8 y 9.
x[8] <- x[9] <- NA

x


