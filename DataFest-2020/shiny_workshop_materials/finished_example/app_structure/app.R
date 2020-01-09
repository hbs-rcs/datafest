library(shiny)

# help.search("Page", package = "shiny")
# ?fluidPage
# help.search("Panel", package = "shiny")
# help.search("Output", package = "shiny")

ui <- fluidPage(
    
    textInput("name", label = "What is your name?"),
    
    textOutput("hello")
    
)

server <- function(input, output, session) {
    
    output$hello <- renderText({
        paste("Hello", input$name, "nice to meet you!")
    })
}

shinyApp(ui = ui, server = server)