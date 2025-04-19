# ¿Cuál es la expectativa de vida a nacer promedio por continente en 1952? ¿Y en 2007?

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

x <- gapminder %>% 
filter(year %in% c(1952, 2007)) %>%   # Filtrar solo los años 1952 y 2007 
group_by(continent, year) %>%         # Agrupar por continente y año
summarise(expectativa_promedio = mean(lifeExp, na.rm = TRUE), .groups = 'drop') %>% 
pivot_wider(names_from = year, values_from = expectativa_promedio, names_prefix = "expectativa_")
x