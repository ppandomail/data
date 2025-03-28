# Crear un dataframe con las siguientes variables
datos <- data.frame( Sexo = c("hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"),
                     Presión_arterial = c(119, 99, 102, 78, 78, 82, 96, 104),
                      Pulsos_por_minuto = c(59, 89, 107, 76, 91, 64, 78, 92))

# Visualizar todos los valores para el primer y cuarto individuo
datos[c(1,4),]

# Repetir lo mismo pero solo para las últimas dos variables (columnas)
datos[c(1,4),c(2,3)]

# Determinar si la primera mujer de la tabla tiene una presión arterial mayor a la de la segunda mujer
subset(datos, Sexo=='mujer')[1,2] > subset(datos, Sexo=='mujer')[2,2]

# Construir una nueva columna que cuente los pulsos pero por hora. rbind: agrega filas
datos <- cbind(datos, Pulsos_por_hora = c(datos[,3] * 60))

# Seleccionar solo los hombres que tengan una presión arterial mayor a 100 y guardar la tabla en una variable “hombres_mayor100”
hombres_mayor100 <- subset(datos, Sexo=='hombre' & Presión_arterial > 100)

# Con la función max() determinar el valor máximo de pulsos por minutos de las mujeres
max <- max(subset(datos, Sexo=='mujer')[3])