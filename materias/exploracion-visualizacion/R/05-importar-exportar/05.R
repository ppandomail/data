# Gráfico de frecuencia
library(ggplot2)

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/05-importar-exportar")
df <- read.table("usuarios_ecobici_2024.csv", sep = ",", header = TRUE)
df_male <- subset(df, genero_usuario=='MALE' & edad_usuario < 100) 

ggplot(df_male, aes(x = edad_usuario)) +
  geom_bar(stat = "count", fill = "blue") +
  labs(title = "Frecuencia de Edad de Hombres en Ecobici", 
        x = "Edad", 
        y = "Frecuencia") +
  theme_minimal()