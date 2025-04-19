# ¿Cuántos países hay en la base?

library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder
View(gapminder)

# alternativa 1
x <- length(unique(gapminder$country))
x

# alternativa 2
x <- gapminder %>% 
summarise(num_paises = n_distinct(country)) 
x