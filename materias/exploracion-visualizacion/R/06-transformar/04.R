# ¿Cuál es el país más pobre y más rico, medido en PBI percápita, de cada continente para cada uno de los años?

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

x <- gapminder %>% 
group_by(continent, year) %>% 
summarise(
  pais_mas_rico = country[which.max(gdpPercap)],
  gdp_mas_rico = max(gdpPercap, na.rm = TRUE),
  pais_mas_pobre = country[which.min(gdpPercap)],
  gdp_mas_pobre = min(gdpPercap, na.rm = TRUE),
  .groups = 'drop')
x