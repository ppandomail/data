# ¿Cuántos años tiene la mujer de mayor edad?

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/05-importar-exportar")
df <- read.table("usuarios_ecobici_2024.csv", sep = ",", header = TRUE)
df_females <- subset(df, genero_usuario=='FEMALE') 
x <- max(df_females$edad_usuario)
x