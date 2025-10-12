
                   # ASSIGNMENT 2
 
# NAME     : Fatima Sohail 
# ROLL NO. : 231980004


library(shiny)
library(ggplot2)
library(dplyr)


movies <- read.csv("movies.csv")


ui <- fluidPage(
  titlePanel("Movie Browser, 1970 - 2014"),
  
  sidebarLayout(
    sidebarPanel(
      h4("Plotting"),
      
      selectInput("xvar", "X-axis:", 
                  choices = names(movies), 
                  selected = "Critics.Score"),
      
      selectInput("yvar", "Y-axis:", 
                  choices = names(movies), 
                  selected = "Audience.Score"),
      
      selectInput("colorvar", "Color by:", 
                  choices = names(movies), 
                  selected = "MPAA.Rating"),
      
      sliderInput("alpha", "Alpha:", min = 0.1, max = 1, value = 0.5, step = 0.1),
      
      sliderInput("size", "Size:", min = 1, max = 5, value = 2)
    ),
    
    mainPanel(
      plotOutput("scatterPlot")
    )
  )
)


server <- function(input, output) {
  
  output$scatterPlot <- renderPlot({
    ggplot(movies, aes_string(x = input$xvar, y = input$yvar, color = input$colorvar)) +
      geom_point(alpha = input$alpha, size = input$size) +
      theme_minimal() +
      labs(x = input$xvar, y = input$yvar, color = input$colorvar)
  })
}


shinyApp(ui = ui, server = server)

