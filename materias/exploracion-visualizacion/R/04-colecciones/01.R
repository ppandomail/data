# Crear un dataframe con las siguientes variables:
# Sexo: "hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"
# Presión arterial: 119, 99, 102, 78, 78, 82, 96, 104
# Pulsos por minuto: 59, 89, 107, 76, 91, 64, 78, 92
# Guardarlo en un objeto llamado "datos"

datos <- data.frame(Sexo = c("hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"),
                    Presión_arterial = c(119, 99, 102, 78, 78, 82, 96, 104), 
                    Pulsos_por_minuto = c(59, 89, 107, 76, 91, 64, 78, 92))