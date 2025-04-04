setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/bd")
bd_csv <- "usuarios_ecobici_2024.csv"
df <- read.table(bd_csv, sep = ",", header = TRUE)
head(df)
names(df)
max(df$edad_usuario)

df_females <- subset(df, genero_usuario=='FEMALE')


# mfv para valor frecuente

