# Se ha reportado que 20% de los conductores presentan algún grado de 
# alcoholemia en las festividades de fin de año

rm(list=ls())

# a. Si en un punto de control se verifica a 15 conductores, 
# ¿cuál es la probabilidad de que más de cinco de ellos no presenten alcoholemia? 

dbinom(x=5:15, size=15, prob=0.20)

# b. Si en la jornada del próximo día se pretende investigar a 200 conductores, 
# ¿cuántos de ellos, en media, presentarán alcoholemia? 

E <- 200 * pbinom(q=1:200, size=200, prob=0.20)