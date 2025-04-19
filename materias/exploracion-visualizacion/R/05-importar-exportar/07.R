# Guardar los datos de cada categoría de la variable "genero_usuario" en distintos dataframes 
# y exportarlos a distintas hojas del Excel
library(openxlsx)

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/05-importar-exportar")
df <- read.table("usuarios_ecobici_2024.csv", sep = ",", header = TRUE)
df_fem = subset(df, genero_usuario=='FEMALE')
df_mal = subset(df, genero_usuario=='MALE')
df_other = subset(df, genero_usuario=='OTHER')
lista_exportar <- list("df_mal" = df_mal, "df_fem" = df_fem, "df_other" = df_other)
write.xlsx(x = lista_exportar, file = "base_dividida.xlsx", rowNames = FALSE)