library(sf)
library(ggplot2)
library(readxl)
library(tidyverse)
library(dplyr)
library(tidyr)
library(plotly)

map_data <- st_read("https://cdn.buenosaires.gob.ar/datosabiertos/datasets/ministerio-de-educacion/barrios/barrios.geojson")

ggplot() + geom_sf(data = map_data)

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/14-mapas")

datos <- read_excel("Properati2.xlsx")

df <- datos %>%
  select(-c(start_date, end_date, created_on, title, description))

df <- df %>%
  filter(
    l1 == "Argentina",
    l2 == "Capital Federal",
    property_type == "PH",
    operation_type == "Venta")

barrio_data <- df %>% filter(lon >= -35 & lon <= -33 & lat >= -58.55 & lat <= -58.30)

ggplot() +
  geom_sf(data = map_data) +  # Plot the map
  geom_point(data = barrio_data, aes(x = lat, y = lon), color = "#E67E22", size = 0.5) +
  labs(title = "Ubicación geográfica de los PH", x = "Longitud", y = "Latitud") +
  theme_bw() +
  xlab("Longitud") +
  ylab("Latitud") +
  theme(axis.title.x = element_text(size = 8),
        axis.title.y = element_text(size = 8))

precio_promedio <- datos %>% group_by(l3) %>% summarise(promedio = mean(price)) %>%
  rename(nombre = l3)

prec_promedio_capital <- inner_join(map_data, precio_promedio, by = "nombre")

ggplot(data = prec_promedio_capital) +
  geom_sf(aes(fill = promedio))


grafico_inter <- ggplot(data = prec_promedio_capital) +
  geom_sf(aes(fill = promedio))

ggplotly(grafico_inter)