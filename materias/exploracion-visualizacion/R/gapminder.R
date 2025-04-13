library(dplyr)
library(tidyr)
library(gapminder)

gapminder <- gapminder::gapminder
View(gapminder)

# 1. ¿Cuántos países hay en la base?
# Alt 1
paises = unique(gapminder$country)
length(paises)
# Al 2
p = gapminder %>% summarise(num_paises = n_distinct(country)) 
p

# 2. Indicar cuántos países hay por continente.
pxc <- gapminder %>% group_by(continent) %>% summarise(num_paises = n_distinct(country))  
pxc

# 3. ¿Cuál es la observación con mayor expectativa al nacer de toda la base? ¿A qué país corresponde y a qué año?
mejor_exp <- gapminder %>% filter(lifeExp == max(lifeExp)) %>% select(country, year, lifeExp)
mejor_exp

# 4. ¿Cuál es el país más pobre y más rico, medido en PBI percápita, de cada continente para cada uno de los años

paises_extremos <- gapminder %>%
  group_by(continent, year) %>%
  summarise(
    pais_mas_rico = country[which.max(gdpPercap)],
    gdp_mas_rico = max(gdpPercap, na.rm = TRUE),
    pais_mas_pobre = country[which.min(gdpPercap)],
    gdp_mas_pobre = min(gdpPercap, na.rm = TRUE),
    .groups = 'drop')
paises_extremos

# 5. ¿Cuál es la expectativa de vida a nacer promedio por continente en 1952? ¿Y en 2007?

expectativa <- gapminder %>%
  filter(year %in% c(1952, 2007)) %>%  # Filtrar solo los años 1952 y 2007
  group_by(continent, year) %>%  # Agrupar por continente y año
  summarise(expectativa_promedio = mean(lifeExp, na.rm = TRUE), .groups = 'drop')
tabla_wide <- expectativa %>%
  pivot_wider(names_from = year, values_from = expectativa_promedio, names_prefix = "expectativa_")
tabla_wide

# 6. Realizar una tabla en formato “wide” en donde las columnas contengan los años, y las observaciones sean los promedios de la población de los paises de América.

america <- gapminder %>% filter(continent == 'Americas')
promedio_poblacion <- america %>% group_by(year) %>% summarise(promedio_poblacion = mean(pop))
tabla_wide <- promedio_poblacion %>% pivot_wider(names_from = year, values_from = promedio_poblacion)
tabla_wide

# 7. ¿Cuánto aumentó la expectativa de vida al nacer por continente entre 1952 y 2007?

# 8. Presenta el PIB pércapita de Argentina para cada año menos para los años 1952 y 2007.

# 9. Obtener para cada país la máxima expectativa de vida de los diferentes años, luego ordenarlos de menor a mayor.

# 10. Unir, con los diferentes métodos de join, el dataframe gapminder con el dataframe mortalidad infantil, pero solo el año 1952.

# 11. Unir ambos dataframes obteniendo todos los datos de cada uno.
# 12. Unir ambos dataframes obteniendo solo los países en que coinciden.
# 13. Generar una base que tenga todos los datos de “gapminder” pero de “mortalidad infantil” solo de los países que se encuentran en “gapminder”.
# 14. Hacer los mismo que en el punto anterior pero de manera inversa.
# 15. Generar una base que solo tenga los datos de población y mortalidad pero de Argentina y del año 1952.
# Pra el punto 10 visualizar y extraer las dimensiones en cada caso y comparar.
