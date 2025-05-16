library(ggplot2)
setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/09-visualizacion")
paises <- read.table("autos", sep = ";", header = TRUE)
head(paises)
ggplot(paises, aes(x=Tasa_de_crecimiento, y=Poblacion_urbana, color = Continente)) + geom_point(shape = 17) + geom_smooth()

library(openxlsx)
library(ggcorrplot)
library(dplyr)
autos <- read.xlsx("autos.xlsx")
ggplot(data = autos, aes(x = Marca)) + geom_bar(color="purple", fill="#69b3a2")
var_corr_autos <- autos %>% select("Rendimiento.(millas.por.galon)",
                                   "HP", "Peso", "Aceleracion")
head(var_corr_autos)
corr_autos <- corr <- round(cor(var_corr_autos), 2)
ggcorrplot(corr_autos)

library(dplyr)
library(tidyr)
setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/09-visualizacion")
nombres_arg <- read.table("historico-nombres.csv", sep = ",", header = TRUE)
head(nombres_arg)
df_graficar_anio <- nombres_arg %>% 
  filter(
    nombre %in% c("Clara", "Rodrigo", "Lucas", "Jessica", "Guillermo",
                  "Ana", "Ruben", "Erika", "Sebastian", "Federico",
                  "Alejandra", "Elsa", "Nicolas", "Florencia", "Laura",
                  "Rodolfo", "Eduardo", "Mariel", "Mariano", "Elisa", 
                  "Nahuel", "Pablo", "Leandro", "Federico", "Yesica", "Christian", 
                  "Carlos", "Leticia", "Matias", "Melania", "Jesus", "Martina", "Diego"),
    anio >= 1950,
    anio <  2010
  ) %>% 
  select(-X) %>% 
  mutate(decada = anio %/% 10 * 10)

df_graficar_decada <- df_graficar_anio %>% 
  select(-anio) %>% 
  group_by(nombre, decada) %>% 
  summarise(cantidad = sum(cantidad))

nombres <- df_graficar_decada %>% 
  pivot_wider(names_from = decada, values_from = cantidad)

nombres <- as.data.frame(nombres)
rownames(nombres) <- nombres$nombre
nombres <- nombres[-1]
nombres <- as.matrix(nombres)

heatmap(nombres)
