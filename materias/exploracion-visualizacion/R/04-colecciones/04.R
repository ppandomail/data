# Determinar si la primera mujer de la tabla tiene una presión arterial mayor a la de la segunda mujer

datos <- data.frame(Sexo = c("hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"),
                    Presión_arterial = c(119, 99, 102, 78, 78, 82, 96, 104), 
                    Pulsos_por_minuto = c(59, 89, 107, 76, 91, 64, 78, 92))
x <- subset(datos, Sexo=='mujer')[1,2] > subset(datos, Sexo=='mujer')[2,2]
x