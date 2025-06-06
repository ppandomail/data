library(shiny)
library(ggplot2)

datos <- read.csv("historico-nombres_ok.csv", sep =",", encoding="latin1")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "anios",
                        "Number of bins:",
                        min = 1922,
                        max = 2015,
                        value = c(1987, 2000)),
            selectInput("nombre", "Nombres:",
                        datos$nombre, 
                        multiple = TRUE)
        ),
        
        
        

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
      datos <- datos %>% filter(nombre %in% c('Pablo Miguel') & anio > min(input$anios) & anio < max(input$anios))
      ggplot(datos, aes(x=anio, y=cantidad, fill=nombre)) + geom_col()
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
