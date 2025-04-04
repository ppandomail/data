library(tidyverse)
x <- c(1, 2, 3, 4)

x %>% sum %>% sqrt    #equivalente sqrt(sum(x))


library(dplyr)

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/bd")
bd <- "properati (USD).csv"

# Importar la base de datos Properati
properati <- read.csv2(bd, stringsAsFactors = TRUE)

# Seleccionar las variables barrios, precios en dólares y años
properati1 <- properati %>% select(place_name, price, year)

# Transformar la variable precios en dólares a pesos y agregarla a la tabla
properati2 <- properati1 %>% mutate(price_pesos = price*1000)

# Filtrar, por orden alfabético, los primeros 10 barrios y los años mayores a 2015.
# Guardar los primeros 10 barrios ordenados alfabéticamente en una variable
niveles_barrios <- sort(unique(properati$place_name))[1:10] # la función "sort" ordenada de menor a mayor, o viceversa, un vector o factor
properati3 <- properati2 %>% filter(place_name %in% niveles_barrios & year > 2015)

# Ordenar de mayor a menor el dataframe a partir de la variable precios en pesos.
properati4 <- properati3 %>% arrange(desc(price_pesos))

# Calcular el promedio, minimo y máximo del precio en pesos por barrios
properati5 <- properati4 %>% 
  group_by(place_name) %>%
  summarise(promedio_precio_pesos = mean(price_pesos),
            min_precio_pesos = min(price_pesos),
            max_precio_pesos = max(price_pesos))

library(tidyr)

properati_ancho <- properati %>% group_by(place_name, year) %>%
                   summarise(precio_promedio = mean(price)) %>%
                   pivot_wider(names_from = year,values_from = precio_promedio)