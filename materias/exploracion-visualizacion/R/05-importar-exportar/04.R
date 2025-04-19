# ¿Cuál es la edad más frecuente de los hombres?
# Se filtró por edad_usuario menor a 100

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/05-importar-exportar")
df <- read.table("usuarios_ecobici_2024.csv", sep = ",", header = TRUE)
df_male <- subset(df, genero_usuario=='MALE' & edad_usuario < 100) 
frecuencias <- table(df_male$edad_usuario)
x <- as.numeric(names(frecuencias)[which.max(frecuencias)])
x