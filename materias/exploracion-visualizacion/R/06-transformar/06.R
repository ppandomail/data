# Realizar una tabla en formato “wide” en donde las columnas contengan los años, 
# y las observaciones sean los promedios de la población de los paises de América

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

x <- gapminder %>% 
filter(continent == 'Americas') %>% 
group_by(year) %>% 
summarise(promedio_poblacion = mean(pop)) %>% 
pivot_wider(names_from = year, values_from = promedio_poblacion)
x