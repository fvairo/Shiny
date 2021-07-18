library(shiny)
library(datasets)

## Use a fluid Bootstrap layout
fluidPage(    
  
  ## Give the page a title
  titlePanel("Deaths in Virginia per 1000 inhabitants in 1940"),
  
  ## Generate a row with a sidebar
  sidebarLayout(      
    
    ## Define the sidebar with two inputs
    sidebarPanel(
      selectInput("region", "Type of region:", 
                  choices=c("Rural", "Urban")),
      selectInput("gender", "Male/Female:", 
                  choices=c("Male", "Female")),
    ),
    
    submitButton("Submit"),
    ),

    
    ## Create a plot
    mainPanel(
      plotOutput("deaths")  
    )
    
)

