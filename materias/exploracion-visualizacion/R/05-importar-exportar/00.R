# Importar datos

getwd()                     # verificar sobre que directorio se está trabajando
setwd("C:/Users/Pablo/BD")  # cambiar el directorio de trabajo

df <- read.table("xxx.csv", sep = ";", header = TRUE) 
head(df)

df <- read.csv("xxx.csv",sep = ";") # otra forma
head(df)

library(openxlsx) # cargamos la librería, instalarla desde Packages
df <- read.xlsx("xxx.xlsx")
head(df)
View(df)

# Exportar datos

write.csv(x = df, file = "xxx.csv")  # separados por coma
write.csv2(x = df, file = "xxx.csv") # separados por punto y coma

write.xlsx(x = df, file = "xxx.xlsx", rowNames = FALSE)