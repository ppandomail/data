# Unir, con los diferentes métodos de join, el dataframe gapminder con el dataframe mortalidad infantil, pero solo el año 1952
# a. Unir ambos dataframes obteniendo todos los datos de cada uno
# b. Unir ambos dataframes obteniendo solo los países en que coinciden
# c. Generar una base que tenga todos los datos de “gapminder” pero de “mortalidad infantil” solo de los países que se encuentran en “gapminder”
# d. Hacer los mismo que en el punto anterior pero de manera inversa
# e. Generar una base que solo tenga los datos de población y mortalidad pero de Argentina y del año 1952
# Para el punto 10 visualizar y extraer las dimensiones en cada caso y comparar

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/06-transformar")
gapminder <- gapminder %>% filter(year == 1952) 
mortalidad <- read.xlsx("Mortalidad_infantil.xlsx")
mortalidad <- mortalidad %>% select(country, '1952') %>%  rename(mortalidad = '1952')

a <- full_join(gapminder, mortalidad)
b <- inner_join(gapminder, mortalidad)
c <- left_join(gapminder, mortalidad)
d <- right_join(gapminder, mortalidad)
e <- a %>% filter(country == "Argentina") %>% select(country, mortalidad, pop)