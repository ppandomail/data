print(getwd())

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/bd")
print(getwd())
bd_csv <- "Mortalidad_infantil.csv"
df <- read.table(bd_csv, sep = ";", header = TRUE)
head(df)

library(openxlsx) # cargamos la librería, instalarla desde Packages

# importamos la base de datos
bd_xls = "Mortalidad_infantil.xlsx"
df <- read.xlsx(bd_xls)
head(df)
View(df)

# exportar archivos de texto
write.csv(x = df, file = "mort-inf.csv") # separados por coma
write.csv2(x = df, file = "mort-inf2.csv") # separados por punto y coma

# exportar archivo de ∫excel
write.xlsx(x = df, file = "mort-inf.xlsx", rowNames = FALSE)
