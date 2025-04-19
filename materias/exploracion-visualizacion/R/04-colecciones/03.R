# Repetir lo mismo pero solo para las últimas dos variables

datos <- data.frame(Sexo = c("hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"),
                    Presión_arterial = c(119, 99, 102, 78, 78, 82, 96, 104), 
                    Pulsos_por_minuto = c(59, 89, 107, 76, 91, 64, 78, 92))
x <- datos[c(1,4),c(2,3)]
x