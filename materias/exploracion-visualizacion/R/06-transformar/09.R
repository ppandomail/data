# Obtener para cada país la máxima expectativa de vida de los diferentes años, luego ordenarlos de menor a mayor

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

x <- gapminder %>% 
select(country, year, lifeExp) %>% 
group_by(country) %>% 
summarise(max_exp = max(lifeExp)) %>% 
arrange(max_exp)
x