library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("BMI Body Mass Index Calculator"),
    
    sidebarPanel(
      sliderInput('weight', 'Weight (kg)',70,min=0,max=300, step = 1),
      sliderInput('height', 'Height (metres e.g 1.78)',1.7,min=0,max=2.5,step = 0.1),
      submitButton('Calculate BMI')
),
mainPanel(
      h3('Results of calculation'),
      h3('You entered'),
      verbatimTextOutput("weight"),
      verbatimTextOutput("height"),
      h4('BMI BODY MASS INDEX IS ... NORMAL RANGE <22 FEMALE <25 MALE'),
      verbatimTextOutput("BMIResult")
    )   
  )
)