## Clase 1

### Borro ambiente de trabajo
rm(list=ls())

### Seteo directorio de trabajo
setwd("/Users/ppando/Materias/data/materias/estadistica/R")

### Cargo librerias a usar
library(readr)

### Cargo datos del archivo abalone.txt
datos <- read.table("abalone.txt", header =  F, sep = ",")

### Muestro las primeras 6 filas
head(datos) 

### Pongo nombre a las columnas
colnames(datos) <- c("Genero", "Long", "Diam", "Altura", "Peso", "Peso1", "Peso2", "Peso3", "N.anillos")
head(datos)

### Muestro estructura de los datos
str(datos)
# cuantitativas: 
# cualitativas: genero

### Convierto a los datos genero como factor
# variables cualitativas declararlas como factor (se reconocen categorias)
datos$Genero <- as.factor(datos$Genero)

### Muestro resumen
summary(datos)

### Muestro gráfico de barras para Género
attach(datos) # es como with
frecG <- table(Genero)
barplot(frecG, 
        main = "Gráfico de barras para Género", 
        xlab = "Género", 
        ylab = "Frecuencias", 
        col = c("pink", "green", "blue"),
        legend = rownames(frecG))

### Muestro gráfico de torta o sectores
pie (frecG,
     col = hcl.colors(length(frecG), "Fall"))

### Muestro frecuencias relativas
prop.table(frecG)

### Muestro histograma y datos del histograma
histo <- hist(Long, 
              breaks = 12,
              main = "Histograma de Longitud",
              col = "lightblue",
              border = "purple")
histo

### Muestro boxplot
boxplot(Long, 
        las = 1,
        col = "darkorchid1",
        ylab = "longitud")

library(dplyr)
datos_num <- select_if(datos[,-1], is.numeric)
summary(datos_num)

par(mfrow = c(2, 2))
boxplot(Long,
        col = "darkorchid1",
        xlab = "Longitud")
boxplot(Diam,
        col = "darkorchid1",
        xlab = "Diámetro")
boxplot(Altura,
        col = "darkorchid1",
        xlab = "Altura")
boxplot(Peso,
        col = "darkorchid1",
        xlab = "Peso")

## Gráficos bivariados
## Visualizando numerica vs categórica

boxplot(Long ~ Genero, col = c("blue", "green", "red"))
