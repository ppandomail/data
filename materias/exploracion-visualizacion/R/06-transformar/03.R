# ¿Cuál es la observación con mayor expectativa al nacer de toda la base? ¿A qué país corresponde y a qué año?

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

x <- gapminder %>% 
filter(lifeExp == max(lifeExp)) %>% 
select(country, year, lifeExp)
x