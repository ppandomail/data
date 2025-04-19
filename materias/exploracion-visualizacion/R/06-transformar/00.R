# Transformar datos con Tidyverse
# select - mutate - filter - arrange

library(tidyverse)
library(dplyr)
library(tidyr)

x <- c(1, 2, 3, 4)
x %>% sum %>% sqrt  # equivalente a sqrt(sum(x))


setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/06-transformar")
df  <- read.csv2("properati (USD).csv", stringsAsFactors = TRUE)     # importar la base de datos

df1 <- properati %>% select(place_name, price, year)                  # seleccionar variables (cols)

df2 <- df1 %>% mutate(price_pesos = price*1000)                       # transformar la variable precios en dólares a pesos y agregarla a la tabla

niveles_barrios <- sort(unique(df$place_name))[1:10]                  # sort: ordena (default de menor a mayor)
df3 <- df2 %>% filter(place_name %in% niveles_barrios & year > 2015)  # filtrar según condiciones

df4 <- df3 %>% arrange(desc(price_pesos))                             # ordenar en forma descendente el df a partir de la columna

df5 <- df4 %>% group_by(place_name) %>%                               # calcular promedio, minimo y máximo del precio en pesos por barrios
                summarise(promedio_precio_pesos = mean(price_pesos), 
                min_precio_pesos = min(price_pesos), 
                max_precio_pesos = max(price_pesos))

properati_ancho <- properati %>% group_by(place_name, year) %>% 
                summarise(precio_promedio = mean(price)) %>% 
                pivot_wider(names_from = year,values_from = precio_promedio)