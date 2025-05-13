## TP 1

### Borro ambiente de trabajo
rm(list=ls())

### Seteo directorio de trabajo
setwd("/Users/ppando/Materias/data/materias/estadistica/tps")

### Cargo datos del archivo Premios.csv
datos <- read.csv("Premios.csv", header =  TRUE, sep = ";")

### Muestro resumen
summary(datos)

### Gráficos
datos$genero <- as.factor(datos$genero)

par(mfrow = c(1, 2))

frecG <- table(datos$genero)
barplot(frecG, 
        main = "Gráfico de barras para Género", 
        xlab = "Género", 
        ylab = "Frecuencias", 
        legend = rownames(frecG))

hist(datos$nominaciones, 
     breaks = 9, 
     main = "Histograma de Nominaciones", 
     col = "lightblue",
     border = "purple", 
     xlab = "Nominaciones")

library(ggplot2)
ggplot(datos, aes(x=Edad, y=rating)) + geom_point()

par(mfrow = c(1, 1))
attach(datos)
boxplot(duracion ~ Sexo, col = c("blue", "green"))
