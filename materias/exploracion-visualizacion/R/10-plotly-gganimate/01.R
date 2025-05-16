# Cargar la base de datos Titanic y responder las siguientes preguntas
# ¿Los que estuvieron en la primera clase tuvieron más posibilidades de sobrevivir? 
# ¿Sobrevivieron más mujeres y jóvenes que hombres?
# ¿Cuál fue la clase que tuvo mayor variabilidad en cuanto a las edades de los pasajeros?
# Comparar las distribuciones de las edades entre los que sobrevivieron y no sobrevivieron, 
# ¿existen diferencias? -¿Existe relación entre el costo del ticket y la edad?

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/10-plotly-gganimate")
titanic <- read.table("titanic.csv", sep = ",", header = TRUE)
head(titanic)

sobrevivientes <- titanic %>% filter(Survived == 1)
ggplot(data = autos, aes(x = Marca)) + geom_bar(color="purple", fill="#69b3a2")



class(sobrevivientes$Pclass)