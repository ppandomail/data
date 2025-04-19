# Agregarle al vector "x" los valores de "y" que sean mayores a 5 y guardarlo en una nueva variable

x <- 1:10
y <- seq(1, 20, 2)
y <- y - x[c(1,2)]

for (e in y) 
  if (e > 5)
    z <- append(x, e)
z