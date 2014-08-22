library(shiny)
body<-function(height,weight)(weight/(height * height)) * 703
shinyServer(
        function(input,output){
                output$inputValue<- renderPrint({input$height})
                output$inputValue2<- renderPrint({input$weight})
                output$result<- renderPrint({body(input$height,input$weight)})
        }
        )