library(shiny)
shinyUI(
        pageWithSidebar(
                #Application Title
                headerPanel("BMI Calculator"),
                
                sidebarPanel(
                        numericInput('height', 'Type in the Height(in.)',50,min = 12, max = 96, step = 1),
                        numericInput('weight', 'Type in the Weight(lbs).',120,min = 6, max = 200, step = 1),
                        submitButton('Click to Calculate')
                        ),
                mainPanel(
                       
                        h3('The BMI of the given values is'),
                        verbatimTextOutput("result")
                        
                        )
                )
        )