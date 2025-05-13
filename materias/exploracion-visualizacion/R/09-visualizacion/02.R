# Realizar el diagrama del punto 1 por continente y comparar

library(dslabs)
library(ggplot2)
library(dplyr)

bd <- dslabs::gapminder
bd <- bd %>% filter(year == 1960)
ggplot(bd, aes(x=fertility, y=life_expectancy)) + geom_point(aes(color = continent)) + geom_smooth()