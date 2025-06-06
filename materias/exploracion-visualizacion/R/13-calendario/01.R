library(googleVis)
library(readxl)

setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/R/13-calendario")

covid <- read_excel("fallecidos de covid.xlsx")

plotdata <- gvisCalendar(data=covid, 
  datevar="dia",
  numvar="total",
  options=list(
    title="Fallecimientos por Coronavirus en Argentina",
    calendar="{cellSize:10, 
    yearLabel:{fontSize:20, color:'#444444'}, 
    focusedCellColor:{stroke:'red'}}",
    width=700, height=400),
  chartid="Calendar")
plot(plotdata)