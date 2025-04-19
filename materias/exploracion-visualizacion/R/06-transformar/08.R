# Presenta el PIB pércapita de Argentina para cada año menos para los años 1952 y 2007

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

x <- gapminder %>% 
select(country, year, gdpPercap) %>% 
filter(country == "Argentina") %>% 
filter(!(year %in% c(1957, 2007)))
x