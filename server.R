library(shiny)

shinyServer(
  function(input,output) {
    output$weight <-renderText({input$weight})
    output$height <-renderText({input$height})
   #  output$BMIResult <- renderPrint({BMI(input$bmicalc)})
   output$BMIResult <- renderText({input$weight}/({input$height}*{input$height}))
  }
) 
