library(shiny)
library(MASS)
data(EuStockMarkets)

shinyUI(fluidPage(
        titlePanel("European Stock Markets"),
        sidebarLayout(
          sidebarPanel(radioButtons("EX","Select Index", 
                            c("All" =5,
                              "DAX" =1,
                              "SMI"= 2,
                              "CAC"= 3,
                              "FTSE" = 4
                              ),selected=1)      
                    ),
        mainPanel(plotOutput("newHist"),
                  "Select the Stock Exchange Index you would like to see")
            )))