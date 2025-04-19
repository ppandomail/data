# Sumar todos los valores de "y" menos el último

y <- seq(1, 20, 2)
Sum(y[-length(y)])

# otra forma
acum <- 0
i <- 1
while (i < length(y)) {
  acum <- acum + y[i]
  i <- i + 1
}
acum