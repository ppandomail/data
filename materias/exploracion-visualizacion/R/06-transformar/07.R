# ¿Cuánto aumentó la expectativa de vida al nacer por continente entre 1952 y 2007?

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

x <- gapminder %>% 
filter(year %in% c(1952, 2007)) %>%  
group_by(continent, year) %>%  
summarise(exp_vida = mean(lifeExp)) %>%  
pivot_wider(names_from = year, values_from = exp_vida) %>% 
mutate(aumento = '2007' - '1952')
x