library(calendR)
library(readxl)
library(tidyverse)
library(dplyr)
library(tidyr)

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/13-calendario")

covid <- read_excel("fallecidos de covid.xlsx")

covid_2021 <- covid %>% filter(dia > "2020-12-31")

calendR(year = 2021,
        special.days = covid_2021$total,
        gradient = TRUE,
        low.col = "white",
        special.col = "#FF4600",
        legend.pos = "right",
        legend.title = "Cantida de fallecidos") 