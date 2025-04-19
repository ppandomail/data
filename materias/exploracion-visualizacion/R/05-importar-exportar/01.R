# Descargar de la página correspondiente e importar la base de datos ecobicis

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/05-importar-exportar")
df <- read.table("usuarios_ecobici_2024.csv", sep = ",", header = TRUE)
head(df)