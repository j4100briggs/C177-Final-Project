library(shiny)
library(deSolve) 
library(ggplot2)

# Define server logic required to plot various variables
shinyServer(function(input, output) {
    
  
    #output 3 plots, position, velocity, acceleration
    output$PPlot <- reactivePlot(function() {
        eq = function(x){input$p0 + input$v0 * x + input$a * x * x/2 } # note: x represents time here s=s0+v*t+a*t^2
        ggplot(data.frame(x=c(1, 50)), aes(x=x)) + stat_function(fun=eq, geom="line") + ggtitle("Position vs Time") + xlab("time") + ylab("meters")
        
      
    })
    output$VPlot <- reactivePlot(function() {
        eq = function(x){input$v0*x + input$p0 } #v=a*t+v0
        ggplot(data.frame(x=c(1, 50)), aes(x=x)) + stat_function(fun=eq, geom="line") + ggtitle("Velocity vs Time") + xlab("time") + ylab("m/s")
        
       
    })
    output$APlot <- reactivePlot(function() {
        eq = function(x){ input$a }  #a=a
        ggplot(data.frame(x=c(1, 50)), aes(x=x)) + stat_function(fun=eq, geom="line") + ggtitle("Acceleration vs Time") + xlab("time") + ylab("m/s^2")
        
       
    })
    
})
