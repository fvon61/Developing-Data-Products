library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
   output$distPlot <- renderPlot({
    hist(quakes$mag, probability = TRUE, breaks = as.numeric(input$n_breaks),
         xlab = "Richter Magnitude", main = "Number of quakes")
    
    dens <- density(faithful$eruptions, adjust = input$bw_adjust)
    lines(dens, col = "blue")
   
 
  })
  
})
