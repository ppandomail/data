# Indicar cuántos países hay por continente

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder

x <- gapminder %>% 
group_by(continent) %>% 
summarise(num_paises = n_distinct(country))  
x