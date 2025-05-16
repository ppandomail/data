library(plotly)
library(dplyr)
library(tidyr)

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/10-plotly-gganimate")
nombres_arg <- read.table("historico-nombres.csv", sep = ",", header = TRUE)
head(nombres_arg)

df_graficar_anio <- nombres_arg %>% 
  filter(
    nombre %in% c("Juan", "Maria", "Emilio", "Eva"),
    anio >= 1950,
    anio <  2010
  ) %>% 
  select(-X) %>% 
  mutate(decada = anio %/% 10 * 10)

df_graficar_decada <- df_graficar_anio %>% 
  select(-anio) %>% 
  group_by(nombre, decada) %>% 
  summarise(cantidad = sum(cantidad))

ggplotly(
  ggplot(
    data = df_graficar_decada, mapping = aes(x = decada, y= cantidad, fill = nombre)
  ) +
    geom_col(position = "fill")+
    theme_classic())

ggplotly(
  ggplot(data = df_graficar_anio) +
    geom_boxplot(mapping = aes(x = nombre, y = cantidad, fill = nombre)) +
    facet_wrap(~decada) +
    theme_bw()
)


library(hrbrthemes)

paises <- read.csv("paises.csv", sep =";")

p <- paises %>%
  ggplot(aes(Tasa_de_crecimiento, y= Poblacion_urbana, size = Poblacion_2020,
             color = Continente, text= Pais)) +
  geom_point(alpha = 0.7) +
  scale_size(range = c(1, 5)) +
  theme_ipsum()
ggplotly(p)


library(gganimate)
library(gifski)

anim <- ggplot(
  data = df_graficar_anio, 
  aes(x = anio, y = cantidad, color = nombre)) +
  geom_line() +
  geom_point() +
  theme_classic() +
  transition_reveal(anio)

animate(anim, nframes = 200, , fps = 10, 
        renderer = gifski_renderer("gganim.gif"))


library(dslabs)
library(ggplot2)
data("gapminder")

p <- ggplot(
  gapminder, 
  aes(x = gdp, y=life_expectancy, size = population, colour = continent)
) +
  geom_point(show.legend = TRUE, alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  theme_classic() +
  labs(x = "GDP per capita", y = "Life expectancy")



p + transition_time(year) +
  labs(title = "Year: {frame_time}")


df <- gapminder::gapminder 

fig <- df %>%
  plot_ly(
    x = ~gdpPercap, 
    y = ~lifeExp, 
    size = ~pop, 
    color = ~continent, 
    frame = ~year, 
    text = ~country, 
    hoverinfo = "text",
    type = 'scatter',
    mode = 'markers'
  )
fig <- fig %>% layout(
  xaxis = list(
    type = "log"
  )
)

fig