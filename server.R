library(plotly)
library(ggplot2)
#category <<- 1
shinyServer(function(input, output, session)
  { 
  observeEvent(input$Results, {
    updateNavbarPage(session = session, inputId = "tabs", selected = "Results")
  })

  data_final <- reactive({ 
    #Entertainer Bubble
    if (input$radio4=="Narrative") cust$bubblesize[1] = cust$bubblesize[1] + 3
    if ( "Romance" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 7
    if ( "Family" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 5
    if ( "Drama" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 5
    if ( "Comedy" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 6
    if ( "Foreign" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] - 2
    if ( "Music" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 5
    if ( "Horror" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 3
    if ( "Action" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 2 
    if ( "Adventure" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 2
    if ( "Sci Fi" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] - 2
    if ( "Western" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] - 2
    if ( "War" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] - 1
    if ( "Thriller" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 3
    if ( "Documentary" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] - 2
    if ( "Biography" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 1 
    if ( "Sports" %in% input$select) cust$bubblesize[1] = cust$bubblesize[1] + 1
    if (input$radio=="$5 million +") cust$bubblesize[1] = cust$bubblesize[1] + 5
    #Artist Bubble
    if (input$radio4=="Narrative") cust$bubblesize[1] = cust$bubblesize[1] + 3
    if ( "Romance" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 6
    if ( "Family" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 3 
    if ( "Drama" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 5
    if ( "Animation" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 2
    if ( "Foreign" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 9
    if ( "Music" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 7
    if ( "Horror" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] - 2 
    if ( "Action" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] - 2
    if ( "Sci Fi" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 2 
    if ( "Western" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 2 
    if ( "War" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] - 1 
    if ( "Documentary" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 5 
    if ( "Biography" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] + 5 
    if ( "Sports" %in% input$select) cust$bubblesize[2] = cust$bubblesize[2] - 2 
    if (input$radio=="$3 million - $5 million") cust$bubblesize[2] = cust$bubblesize[2] + 5
    if (input$radio=="$1 million - $3 million") cust$bubblesize[2] = cust$bubblesize[2] + 2
    if (input$radio=="$250K - $1 million") cust$bubblesize[2] = cust$bubblesize[2] + 4 
    if (input$radio=="Under $250K") cust$bubblesize[2] = cust$bubblesize[2] + 8 
    if (input$select2=="Mid-career - 7 to 25 years as an artist or 2nd project") cust$bubblesize[2] = cust$bubblesize[2] + 2
    if (input$select2=="Life-long career- Over 25 years as an artist or large body of work") cust$bubblesize[2] = cust$bubblesize[2] + 4
    #Thinker Bubble
    if (input$radio4=="Documentary") cust$bubblesize[1] = cust$bubblesize[1] + 4
    if ( "Romance" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] - 2
    if ( "Family" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] - 2
    if ( "Comedy" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] - 1
    if ( "Animation" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] - 2
    if ( "Foreign" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] + 8
    if ( "Music" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] - 1
    if ( "Horror" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] - 1
    if ( "Western" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] + 6
    if ( "War" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] + 4
    if ( "Documentary" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] + 10
    if ( "Biography" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] + 10
    if ( "Sports" %in% input$select) cust$bubblesize[3] = cust$bubblesize[3] + 8
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
                                      
output$link <- renderUI({
  tags$a(href = "Marketing_Template.pdf")
}) 
}) 





