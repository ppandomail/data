# Seleccionar solo los hombres que tengan una presión arterial mayor a 100 y guardar la tabla en una variable "hombres_mayor100"

datos <- data.frame(Sexo = c("hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"),
                    Presión_arterial = c(119, 99, 102, 78, 78, 82, 96, 104), 
                    Pulsos_por_minuto = c(59, 89, 107, 76, 91, 64, 78, 92))
hombres_mayor100 <- subset(datos, Sexo=='hombre' & Presión_arterial > 100)
hombres_mayor100