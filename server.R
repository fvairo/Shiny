library(shiny)
library(datasets)

## Define a server for the Shiny app
function(input, output) {
  
  ## Fill in the spot for a plot
  output$deaths <- renderPlot({
   p = barplot(VADeaths[,paste(input$region, input$gender)],
            main = "Deaths in Virginia per 1000 inhabitants in 1940",
            xlab = "Age Range")
   text(p, y =VADeaths[,paste(input$region, input$gender)], labels=VADeaths[,paste(input$region, input$gender)], col="red")
    
  })
}