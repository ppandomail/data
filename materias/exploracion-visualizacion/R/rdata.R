setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/bd")

datos <- data.frame(sexo = c("hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"),
                    presion_arterial = c(119, 99, 102, 78, 78, 82, 96, 104),
                    pulsos_por_minuto = c(59, 89, 107, 76, 91, 64, 78, 92))

promedio_presion_arterial <- aggregate(presion_arterial ~ sexo, 
                                       FUN = mean, 
                                       data = datos)

minimo_pulsos_por_minuto <- aggregate(presion_arterial ~ sexo, 
                                      FUN = min, 
                                      data = datos)


# Con la función "save" guardamos todos los objetos en un solo archivo. 
save(datos, promedio_presion_arterial, minimo_pulsos_por_minuto, file="salud.RData")

# Con la función "load" cargamos el archivo en el espacio de trabajo, por lo que tendremos disponibles nuevamente todos los objetos.
load("salud.RData")
View(datos)