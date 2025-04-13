setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/bd")
bd_csv <- "usuarios_ecobici_2024.csv"

df <- read.table(bd_csv, sep = ",", header = TRUE)
head(df)

# Leer los nombres de las columnas de la base
nombre_columnas <- names(df)
nombre_columnas

# ¿Cuántos años tiene la mujer de mayor edad?
df_females <- subset(df, genero_usuario=='FEMALE') 
mujer_mayor_edad <- max(df_females$edad_usuario)
mujer_mayor_edad

# ¿Cuál es la edad más frecuente de los hombres?
# Se filtró por edad_usuario menor a 100
df_male <- subset(df, genero_usuario=='MALE' & edad_usuario < 100) 
frecuencias <- table(df_male$edad_usuario)
edad_mas_frecuente <- as.numeric(names(frecuencias)[which.max(frecuencias)])
edad_mas_frecuente

# Gráfico de frecuencia
library(ggplot2)
ggplot(df_male, aes(x = edad_usuario)) +
  geom_bar(stat = "count", fill = "blue") +
  labs(title = "Frecuencia de Edad de Hombres en Ecobici",
       x = "Edad",
       y = "Frecuencia") +
  theme_minimal()

# Segmentar la base con las mujeres que tienen una edad mayor a 40 y guardarla en un archivo .csv
df_female_mas_40 <- subset(df, genero_usuario=='FEMALE' & edad_usuario > 40)
write.csv2(x = df_female_mas_40, file = "df_female_mas_40.csv")

# Guardar los datos de cada categoría de la variable "genero_usuario" en distintos dataframes y exportarlos a distintas hojas del Excel
library(openxlsx)
df_fem = subset(df, genero_usuario=='FEMALE')
df_mal = subset(df, genero_usuario=='MALE')
df_other = subset(df, genero_usuario=='OTHER')
lista_exportar <- list("df_mal" = df_mal, "df_fem" = df_fem, "df_other" = df_other)
write.xlsx(x = lista_exportar, file = "base_dividida.xlsx", rowNames = FALSE)
