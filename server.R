

WeekWage <- function(hwa, hw) (hwa* hw) 
MonthWage <- function(hwa, hw) (hwa* hw) *4
YearWage <- function(hwa , hw) ((hwa* hw) *4) * 12


shinyServer(
  function(output,input){
    output$Wage <- renderText({WeekWage(input$hwa, input$hw)})
    output$Month <- renderText({MonthWage(input$hwa, input$hw)})
    output$Year <- renderText({YearWage(input$hwa, input$hw)})
  }  
)