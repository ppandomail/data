# Variables aleatorias

# Borro el ambiente de trabajo
rm(list=ls())

# VARIABLES ALEATORIAS
# Para cada distribución:
# dxxx(x, ...)  # Función de masa de probabilidad, f(x) para VAC ó P(X=x) para VAD
# pxxx(q, ...)  # Función de distribución acumulada hasta q, F(q) = P(X<=q)
# qxxx(p, ...)  # Cuantil para el cual P(X <= q) = p
# rxxx(n, ...)  # Generador de números aleatorios

# VARIABLES ALEATORIAS DISCRETAS
# DISTRIBUCIONES DISCRETAS IMPORTANTES
# binom     # Binomial
# geom      # Geométrica
# hyper     # Hipergeométrica
# pois      # Poisson

##### EJEMPLO BINOMIAL ######
# X: cantidad de pacientes con gripe en 20 que llegaron a guardia
# se sabe que probab de gripe=0.1

#Calcular la probabilidad de que hayan 3 con gripe en los 20: P(X=3)
dbinom(x=3, size=20, prob=0.10)

#Calcular la probabilidad de que haya a lo sumo 3 con gripe: P(X<=3) = F(3)
# esto es la función de distribución en ese valor
pbinom(q=3, size=20, prob=0.10)

# para graficar la función de probabilidades:
x <- 0:20  # Soporte (dominio) de la variable
f_probabilidad_X <- dbinom(x=x, size=20, prob=0.1)
plot(x=x, y=f_probabilidad_X, type='h', las=1, lwd=5,col = "green")

#simular una muestra de tamaño 100 de esta variable
muestraB <- rbinom(n=100, size=20, prob=0.1)
# Para resumir los valores simulados, veamos la tabla de frecuencias:
table(muestraB)

#Para comparar con las probabilidades teóricas, veamos
# la tabla de frecuencias relativas de los datos simulados:
prop.table(table(muestraB))  

#####  EJEMPLO GEOMETRICA ######
# N: cantidad de pacientes que llegaron a guardia antes del primero con gripe
# se sabe que probab de gripe=0.1

#Calcular la probabilidad de que recién el 6to tenga gripe: P(N=5)
dgeom(x=5, prob=0.10)

#Calcular la probabilidad de que haya que revisar a lo sumo 6 hasta el primero con gripe: P(N<=5)
# esto es la función de distribución en ese valor
pgeom(q=5, prob=0.10)

# para graficar la función de probabilidades:
n <- 0:100  # Soporte (dominio) de la variable
f_probabilidad_N <- dgeom(n, prob=0.1)
plot(n, y=f_probabilidad_N, type='h', las=1, lwd=2,col = "red")

#simular una muestra de tamaño 100 de esta variable
muestraG <- rgeom(100, prob=0.1)
table(muestraG)

#####  EJEMPLO POISSON ######
# K: cantidad de pacientes que llegaron a guardia entre las 8 y las 9
# el parámetro es la tasa de arribos por hora =15

#Calcular la probabilidad de que lleguen 17: P(K=17)
dpois(17, 15)

#Calcular la probabilidad de que lleguen como máximo 17 en ese tiempo: P(K<=17)
# esto es la función de distribución en ese valor
ppois(17, 15)

# para graficar la función de probabilidades:
k <- 0:35  # Soporte (dominio) de la variable
f_probabilidad_K <- dpois(k, 15)
plot(k, y=f_probabilidad_K, type='h', las=1, lwd=2,col = "lightblue")

## Ejercicio 1 de Binomial

# VARIABLES ALEATORIAS CONTINUAS
#dxxx(x, ...)  # Función de densidad de probabilidad, f(x)
#pxxx(q, ...)  # Función de distribución acumulada hasta q, F(x)
#qxxx(p, ...)  # Cuantil para el cual P(X <= q) = p
#rxxx(n, ...)  # Generador de números aleatorios.

# DISTRIBUCIONES CONTINUAS IMPORTANTES
# chisq    # Chi-cuadrada
# exp      # Exponencial
# f        # distribucion Fde Fischer
# norm     # normal
# t        # t-student
# unif     # Uniforme


##### EJEMPLO UNIFORME ######
# se elige un punto al azar en el intervalo (0,1)

#Calcular la densidad en un punto 
dunif(0.5, 0, 1)
#OJO!! esto no es la probabilidad puntual!!!

#Calcular la probabilidad de que el número elegido sea menor o igual a 0.3: P(X<=0.3)
#esto es la función de distribución en 0.3
punif(0.3, 0, 1)

#graficar la densidad de esta uniforme
curve(dunif(x, 0, 1), lwd=2, las=1, ylab='Densidad de Unif(0,1)', from=-3, to=4)

# Calcular la probabilidad de que el número esté entre 0.3 y 0.5
#P(0.3<X<0.5)
proba= punif(0.5, 0, 1) - punif(0.3, 0, 1)
proba

#simulemos una muestra de tamaño 100 de esta variable
muestraU_100 <- runif(100, 0, 1)
hist(muestraU_100)
mean(muestraU_100) #esto da la media en la muestra o sea el promedio


##### EJEMPLO EXPONENCIAL ######
# T: tiempo de vida en años Exp(1/5=0.2)
#Calcular la densidad en un punto
dexp(4, rate=0.2)

#Calcular la probabilidad : P(T<=4)
#esto es la función de distribución en 4
pexp(4, 0.2)

# calcular la probabilidad P(T>4)
pexp(4, 0.2, lower.tail = FALSE)

# graficar la densidad de Exp(0.2)
curve(dexp(x, rate=0.2), lwd=2, las=1, ylab='Densidad de Exp(1/5)', from=0, to=30, col= 'blue' )


##### EJEMPLO NORMAL ESTANDAR ######
# Z con distribución normal estandar: Z ~ N(0,1) 
# veamos el gráfico primero: densidad
curve(dnorm(x, 0, 1), lwd=2, las=1, ylab='Densidad de Z ~ N(0,1)', from=-5, to=5, col= 'blue' )
#función de distribución:
curve(pnorm(x, 0, 1), lwd=2, las=1, ylab='Distribución de Z ~ N(0,1)', from=-5, to=5, col= 'blue' )

#Calcular la probabilidad : P(Z< 1)
#esto es la función de distribución de Z en 1
pnorm(1, 0, 1) #P(Z<1) = 0.8413447
pnorm(0, 0, 1) #P(Z<0) = 0.5

## CUANTILES:
# un cuantil alfa es un valor de la variable que deja a izquierda una probabilidad alfa.
# por ejemplo, el cuantil 0.9 es el valor de "z" que deja a la izq una probabilidad de 0.9
qnorm(0.9) # ver los parámetros que pone por default!!!
qnorm(0.9, 0, 1)

#verifico
pnorm(1.281552, 0, 1) # da 0.9 


##EJERCICIO 2:
# Calcular la probabilidad : P(-1 < Z < 1)

# Calcular la probabilidad : P(-2 < Z < 2)

# Calcular la probabilidad : P(-3 < Z < 3)
# Hallar el valor de z que deja en la zona central una probabilidad de 0.9
# Simular muestras de tamaño 1000 y 10000 ¿qué se puede observar?


# Veamos de simular una muestra aleatoria de esta distribución:
muestra_Z100 <- rnorm(100, 0, 1)
# ahora grafiquemos esta muestra en un histograma:
hist(muestra_Z100)
mean(muestra_Z100)

##### EJEMPLO NORMAL GENERAL ######
# X con distribución normal de media 30 y desvío 8: X ~ N(30,8) 
# veamos el gráfico primero: densidad
curve(dnorm(x, 30, 8), lwd=2, las=1, ylab='Densidad de X ~ N(30,8)', from=0, to=60, col= 'blue' )

# Veamos cómo cambia el gráfico según los parámetros:
curve(dnorm(x, 30, 1), lwd=2, from=0, to=60, col= 'red' )
curve(dnorm(x, 30, 2), lwd=2, from=0, to=60, col= 'black' , add=T)
curve(dnorm(x, 30, 8), lwd=2, from=0, to=60, col= 'blue', add=T )

##EJERCICIO:
#Calcular la probabilidad : P(22<X<38)

# Veamos de simular una muestra aleatoria de esta distribución:
set.seed(357) # para que siempre se obtenga la misma simulación al volver a correr
muestra_X1000 <- rnorm(1000, 30, 8)
# ahora grafiquemos esta muestra en un histograma:
hist(muestra_X1000, freq=FALSE, col="lightblue", border="black", ylim=c(0, 0.10),
     main="Histograma y densidad de N(30,8)", xlab="X", ylab="f(x)")
curve(dnorm(x, mean=30, sd=8), lwd=2, col="tomato", add=TRUE)


#EJERCICIO: 
# Simular muestras de tamaño 1000 y 10000 y calcular las medias muestrales ¿qué se puede observar??


##### EJEMPLO DISTRIBUCION t de STUDENT ######
# T con distribución: T ~ t(g.l.=v) 
# veamos el gráfico primero: densidad de T en azul y densidad de Z en rojo
curve(dt(x, 4), lwd=2, las=1, ylab='Densidad de T ~ t(4)', from=-5, to=5, col= 'blue' )
curve(dnorm(x, 0,1), lwd=2, las=1, , from=-5, to=5, col= 'red',add=T )

# EJERCICIO 4
# hallar el valor de a tal que P(-a<T<a) = 0.9 con T ~ t(g.l.=10)

##### EJEMPLO DISTRIBUCION CHI-cuadrado ######
# X con distribución: X ~ chi2(g.l.=v) 
# veamos el gráfico primero la densidad 
curve(dchisq(x, 4), lwd=2, las=1, ylab='Densidad de chi2(4)', from=0, to=15, col= 'blue' )

# EJERCICIO
# hallar el valor de b tal que P(X > b ) = 0.05

