# Restarle al vector "y" las primeras dos posiciones del vector "x"

x <- 1:10
y <- seq(1, 20, 2)
y <- y - x[c(1,2)]