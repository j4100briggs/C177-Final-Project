library(shiny)
library(plotly)
library(knitr)
library(shinythemes)
library(ggplot2)



xx<-data.frame(time1=seq(0, 50))
vv<-data.frame(time1=seq(0,50))
aa<-data.frame(time1=seq(0,50))
#three seperate data frames to load for three main graphs

server <- shinyServer(function(input, output) {
    
    output$aPlot <- renderPlotly({
        number_ticks <- function(n) {function(limits) pretty(limits, n)}
        
        x1<-aa[,1]
        y1<-input$a
        df = data.frame(x1 ,y1)
        ggplot(data=df, aes(x=x1, y=y1)) +
            geom_line(color =  "lightblue") +
            scale_x_continuous(breaks = number_ticks(25)) +
            scale_y_continuous(breaks = number_ticks(10)) +
          theme_light() + xlab("seconds") + labs(y= 'm/s<sup>2') + ggtitle("Acceleration: a(t)=a")

        # plot(x, y, type = "l", pch = 1, col = 'red', ylim = c(0,75000))
    })
    output$vPlot <- renderPlotly({
        number_ticks <- function(n) {function(limits) pretty(limits, n)}
        x1<-vv[,1]
        y1<-input$v + input$a*(x1)
        df = data.frame(x1 ,y1)
        ggplot(data=df, aes(x=x1, y=y1)) +
            geom_line(color =  "lightblue") +
            scale_x_continuous(breaks = number_ticks(25)) +
            scale_y_continuous(breaks = number_ticks(10)) +
            theme_light() + xlab("seconds") + ylab("m/s") + ggtitle("Velocity: v(t)= x + vt") 
            
        # plot(x, y, type = "l", pch = 1, col = 'red', ylim = c(0,75000))
    })
    output$pPlot <- renderPlotly({
        number_ticks <- function(n) {function(limits) pretty(limits, n)}
        x1<-xx[,1]
        y1<-input$v*(x1) + input$a*(x1)^2 + input$p
        df = data.frame(x1 ,y1)
        ggplot(data=df, aes(x=x1, y=y1)) +
            geom_line(color =  "lightblue") +
            scale_x_continuous(breaks = number_ticks(25)) +
            scale_y_continuous(breaks = number_ticks(10)) +
            theme_light() + xlab("seconds") + ylab("m") +ggtitle("Position: x(t)= x + vt + 0.5at<sup>2")
        # plot(x, y, type = "l", pch = 1, col = 'red', ylim = c(0,75000))
    })
  
    
})

ui <- shinyUI(fluidPage(theme = shinytheme("cerulean"),
                        titlePanel("1D Constant Aceleration Kinematics"),
                        sidebarLayout(
                            sidebarPanel(
                                style = "position:fixed;width:inherit;",
                                numericInput("p",
                                             "Initial Position x:", value = 0),
                                numericInput("v",
                                             "Initial Velocity v:", value = 0),
                                numericInput("a", 
                                             "Acceleration a:", value = 0)
                                
                             
                                #checkboxInput("piece", "Piece-Wise" )
                            ),
                            mainPanel(
                                plotlyOutput("pPlot"),
                                plotlyOutput("vPlot"),
                                plotlyOutput("aPlot")
                                
                            )
                        )
))

shiny::shinyApp(ui=ui,server=server)
