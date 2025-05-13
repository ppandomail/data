# Instalar la librería dslabs y cargar la base de datos "gapminder"
# contenida dentro de esta librería con la función "data()"
# A partir de esta base de datos responder resolver los siguiente ítems:
# Realizar un diagrama de dispersión para el año 1960 entre las variables 
# fertilidad y expecativa de vida, y agregarle una línea de tendencia.

library(dslabs)
library(ggplot2)
library(dplyr)

bd <- dslabs::gapminder
bd <- bd %>% filter(year == 1960)
ggplot(bd, aes(x=fertility, y=life_expectancy)) + geom_point() + geom_smooth()