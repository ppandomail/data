# a.	Calcular la probabilidad : P(-1 < Z < 1)
p <- pnorm(1, 0, 1) - pnorm(-1, 0, 1)
p

# b.	Calcular la probabilidad : P(-2 < Z < 2) 
p <- pnorm(2, 0, 1) - pnorm(-2, 0, 1)
p

# c.	Calcular la probabilidad : P(-3 < Z < 3)
p <- pnorm(3, 0, 1) - pnorm(-3, 0, 1)
p

# d.	Hallar el valor de z que deja en la zona central una probabilidad de 0.9
# z: quantil
#                   0.9 (medio de la densidad)  
# ----------?--------o--------?-----------
#    0.05  -a                 a  0.05
# <---------
# <----------------------------

# Busco a / P(-a < Z < a) = 0.9
# A la izq de -a tiene que haber 0.05
# A la izq de a  tiene que haber 0.9 + 0.05 = 0.95
# Busco la P(Z < a) = 0.95

z <- qnorm(0.95, 0, 1)
z  # 1.6448

# e.	Simular muestras de tamaño 1000 y 10000 ¿qué se puede observar?
par(mfrow = c(1, 2))
muestra_Z1000 <- rnorm(1000, 0, 1)
hist(muestra_Z1000)
mean(muestra_Z1000)

muestra_Z10000 <- rnorm(10000, 0, 1)
hist(muestra_Z10000)
mean(muestra_Z10000)

# A mayor tamaño de muestra el histograma va quedando con una forma acampanada
# El histograma se va poniendo cada vez más parecido a la densidad
# La media se va pareciendo cada vez más al valor 0