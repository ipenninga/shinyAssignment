
shinyServer(function(input,output)
            {output$newHist<-renderPlot({
              EX<-as.numeric(input$EX)
              if(EX!=5) {plot(EuStockMarkets[,EX],ylab=(colnames(EuStockMarkets)[EX]))} else plot(EuStockMarkets)
              })
 }
)             
