library(ggplot2)
library(GGally)

setwd("/Users/ppando/Materias/data/materias/aprendizaje-automatico/R")
grasas<-read.csv("Grasas.csv", header=TRUE,sep=";")
names(grasas)
head(grasas)
pairs(grasas)

modelo <- lm(grasas~edad, data=grasas)
modelo

plot(grasas$edad, grasas$grasas)
abline(modelo, col="red")

summary(modelo)

names(modelo)

modelo$coefficients

res <- modelo$residuals
fit <- modelo$fitted.values

res.standard <- rstandard(modelo)

# residuo
plot(fit, res)
abline(0, 0, col="red")

# residuo estandarizado tienen varianza 1
plot(fit, res.standard)
abline(0, 0, col="red")

# Testeo que garantiza normalidad
qqnorm(res.standard)
qqline(res.standard)

