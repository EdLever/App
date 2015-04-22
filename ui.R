shinyUI(pageWithSidebar(
  headerPanel("Wage Calculator"),
  sidebarPanel(
    numericInput('hwa','Hourly Wage', 0 , min = 0 , max = 1000),
    numericInput('hw', "Hours Worked a Week", 0, min = 0 , max = 84),
    submitButton("Calculate")
  ),
  mainPanel(
    h3("Wages"),
    h6("Net Weekly Income"),
    verbatimTextOutput("Wage"),
    h6("Monthly Income"),
    verbatimTextOutput("Month"),
    h6("Yearly Income"),
    verbatimTextOutput("Year")
    
    )
))