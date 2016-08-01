library(plotly)
library(ggplot2)
#category <<- 1
shinyServer(function(input, output, session)
  { 
  observeEvent(input$Results, {
    updateNavbarPage(session = session, inputId = "tabs", selected = "Results")
  })
  ##MOVIE TYPE
  # output$text10 <- renderText({ 
  #   paste("Your movie type is", input$radio4)
  # }) 
  
  #Domestic or international
  # output$text11 <- renderText({ 
  #   paste("I would like my film distributed", input$radio5)
  # })
  
  data_final <- reactive({
    if ( "Drama" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 20
    if ( "Classic" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 20
    if ( "Musical" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 20
    if ( "Comedy" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 20
    if ( "Action" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 20
    if ( "Adventure" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 20
    if ( "Documentary" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] + 30
    if ( "Foreign" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] + 30
    if ( "Horror" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] - 10
    if (input$radio=="$3 million - $5 million") cust$bubblesize[2] = cust$bubblesize[2] + 5
    if (input$radio=="$1 million - $3 million") cust$bubblesize[2] = cust$bubblesize[2] + 10
    if (input$radio=="$250K - $1 million") cust$bubblesize[2] = cust$bubblesize[2] + 20
    if (input$radio=="Under $250K") cust$bubblesize[2] = cust$bubblesize[2] + 30
    if (input$radio=="$5 million +") cust$bubblesize[1] = cust$bubblesize[1] + 10
    if (input$select2=="Mid-career - 7 to 25 years as an artist or 2nd project") cust$bubblesize[2] = cust$bubblesize[2] + 10
    if (input$select2=="Life-long career- Over 25 years as an artist or large body of work") cust$bubblesize[2] = cust$bubblesize[2] + 20
    return(cust)
  }) 
  
category <<- 1
output$trendPlot <- renderPlotly({
  temp = data_final()
  print(temp)
  theplot <- ggplot(data = temp) +
    geom_point(aes(x=x,y=y, color=factor(x), #text = profile,label=profile,
                   hoverinfo = "text",
                   text = paste("Check out the Customer Segment tab to learn more")),

               size = temp$bubblesize)  +
         geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
         theme(axis.line=element_blank(),axis.text.x=element_blank(),
         axis.text.y=element_blank(),axis.ticks=element_blank(),
         axis.title.x=element_blank(),
         axis.title.y=element_blank(),legend.position="none",
         panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
         panel.grid.minor=element_blank(),plot.background=element_blank())
    })
                                      


#BUDGET OUTPUT
# output$text2 <- renderText({ 
#   paste("You have chosen a budget of", input$radio)
# }) 


output$link <- renderUI({
  tags$a(href = "Marketing_Template.pdf")
}) 


# observeEvent(input$results, {
#   session$sendCustomMessage(type = 'testmessage',
#                             message = 'Thank you for clicking')
# })
  
  #CAST OUTPUT
  # output$text3 <- renderText({ 
  #   paste("Your cast is", input$select2)
  # }) 
  
  
  #CAREER STAGE OF DIRECTOR/PRODUCER
  # output$text7 <- renderText({ 
  #   paste("Your Director/Producer career stage is", input$select5)
  # })
  #STORY CONCEPT OUTPUT
  # output$text8 <- renderText({ 
  #   paste("Your story concept is", input$radio3)
  # })
  
 # output$text9 <- renderPrint({ input$text })
}) 





