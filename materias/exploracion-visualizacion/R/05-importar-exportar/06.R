# Segmentar la base con las mujeres que tienen una edad mayor a 40 y guardarla en un archivo .csv

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/05-importar-exportar")
df <- read.table("usuarios_ecobici_2024.csv", sep = ",", header = TRUE)
df_female_mas_40 <- subset(df, genero_usuario=='FEMALE' & edad_usuario > 40)
write.csv2(x = df_female_mas_40, file = "df_female_mas_40.csv")