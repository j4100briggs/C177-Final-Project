library(shiny)

# Define UI
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("1-D Kinematic Motion"),
   ##$
  

    
   ##$
    # Sidebar with controls
    sidebarPanel(
        numericInput("tmax", "Time:", 10),
        numericInput("p0", "Initial Position:", 0),
        numericInput("v0", "Initial Velocity:", 0),
        numericInput("a", "Acceleration:", 0)
    ),
    
    # Show the plot of the requested variable against mpg
    mainPanel(
        plotOutput("PPlot"),
        uiOutput('ex1'),
        plotOutput("VPlot"),
        uiOutput('ex2'),
        plotOutput("APlot"),
        uiOutput('ex3')
        
     
        
        
    )
))
