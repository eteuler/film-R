library(plotly)
library(ggplot2)
library(DT)
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
    if (input$radio4=="Narrative") cust$bubblesize[2] = cust$bubblesize[2] + 3
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
    if (input$radio4=="Documentary") cust$bubblesize[3] = cust$bubblesize[3] + 4
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
  
  # category <<- 1
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
    tags$a(href = "Marketing_Template.pdf")}) 
  
  reactattempt <- reactive({
    genre_names = c('action','biography', 'fantasy', 
                    'history', 'musical', 'reality_tv', 
                    'sport', 'war', 'adventure', 'comedy', 'drama', 
                    'romance', 'talk_show', 'animation', 'crime', 
                    'game_show', 'music', 'film_noir', 'horror', 
                    'mystery', 'western', 'family', 'sci_fi', 
                    'thriller', 'news', 'unknown', 'other')
    
    genre_vec = as.numeric(gsub('_',' ',genre_names) %in% tolower(input$select))
    
    budget_n =  input$radio
    
    actors = input$select2
    
    writers = input$select6
    
    directors = input$select5
    
    rating_vec = as.numeric(c('G','PG','PG-13','R','Unrated')==input$select3)
    
    doc_nar_vec = as.numeric(c('Documentary','Narrative') == input$radio4 )
    
    for_dom_vec = as.numeric(c("Internationally", "Domestically") == input$radio4 )
    
    return(list(genre_vec = genre_vec, budget_n = budget_n, actors = actors, writers = writers,
                directors = directors,rating_vec= rating_vec, doc_nar_vec = doc_nar_vec, for_dom_vec = for_dom_vec))
    
  })
  output$tableA = renderDataTable({
    
    updated_movie <<- reactattempt()
    get_distrib(distrib, scaled_distrib, updated_movie$genre_vec, updated_movie$budget_n, updated_movie$actors, 
                updated_movie$directors, updated_movie$writers, updated_movie$rating_vec,
                updated_movie$doc_nar_vec, updated_movie$for_dom_vec, 4)
    
    
  }) 
  
  # mydata = data.frame(tableA)
  # mydata2 <- data.frame(mydata$name, mydata$action, mydata$biography,
  #                       mydata$fantasy, mydata$history, mydata$musical, mydata$reality_tv,
  #                       mydata$sport, mydata$war, mydata$adventure, mydata$comedy, mydata$drama,
  #                       mydata$romance, mydata$talk_show, mydata$animation, mydata$crime,
  #                       mydata$game_show, mydata$music, mydata$film_noir, mydata$horror,
  #                       mydata$mystery, mydata$western, mydata$family, mydata$sci_fi,
  #                       mydata$thriller, mydata$news, mydata$unknown, mydata$other)
  # #######genre plots
  # bartest1 <- plot_ly(mydata2,
  #                     x = mydata$name,
  #                     y = mydata$action,
  #                     name = "action",
  #                     type = "bar")
  # 
  # bartest2 <- add_trace(
  #   bartest1,
  #   x = mydata$name,
  #   y = mydata$biography,
  #   name = "bio",
  #   type = "bar")
  # 
  # bartest3 <- add_trace(
  #   bartest2,
  #   x = mydata$name,
  #   y = mydata$fantasy,
  #   name = "fantasy",
  #   type = "bar")
  # 
  # bartest4 <- add_trace(
  #   bartest3,
  #   x = mydata$name,
  #   y = mydata$history,
  #   name = "history",
  #   type = "bar")
  # 
  # bartest5 <- add_trace(
  #   bartest4,
  #   x = mydata$name,
  #   y = mydata$musical,
  #   name = "musical",
  #   type = "bar")
  # 
  # bartest6 <- add_trace(
  #   bartest5,
  #   x = mydata$name,
  #   y = mydata$reality_tv,
  #   name = "Reality TV",
  #   type = "bar")
  # 
  # bartest7 <- add_trace(
  #   bartest6,
  #   x = mydata$name,
  #   y = mydata$sport,
  #   name = "sport",
  #   type = "bar")
  # 
  # bartest8 <- add_trace(
  #   bartest7,
  #   x = mydata$name,
  #   y = mydata$war,
  #   name = "war",
  #   type = "bar")
  # 
  # bartest9 <- add_trace(
  #   bartest8,
  #   x = mydata$name,
  #   y = mydata$adventure,
  #   name = "adventure",
  #   type = "bar")
  # 
  # bartest10 <- add_trace(
  #   bartest9,
  #   x = mydata$name,
  #   y = mydata$comedy,
  #   name = "comedy",
  #   type = "bar")
  # 
  # bartest11 <- add_trace(
  #   bartest10,
  #   x = mydata$name,
  #   y = mydata$drama,
  #   name = "drama",
  #   type = "bar")
  # 
  # bartest12 <- add_trace(
  #   bartest11,
  #   x = mydata$name,
  #   y = mydata$romance,
  #   name = "romance",
  #   type = "bar")
  # 
  # bartest13 <- add_trace(
  #   bartest12,
  #   x = mydata$name,
  #   y = mydata$talk_show,
  #   name = "talkshow",
  #   type = "bar")
  # 
  # bartest14 <- add_trace(
  #   bartest13,
  #   x = mydata$name,
  #   y = mydata$animation,
  #   name = "animation",
  #   type = "bar")
  # 
  # bartest15 <- add_trace(
  #   bartest14,
  #   x = mydata$name,
  #   y = mydata$crime,
  #   name = "crime",
  #   type = "bar")
  # 
  # bartest16 <- add_trace(
  #   bartest15,
  #   x = mydata$name,
  #   y = mydata$game_show,
  #   name = "gameshow",
  #   type = "bar")
  # 
  # bartest17 <- add_trace(
  #   bartest16,
  #   x = mydata$name,
  #   y = mydata$music,
  #   name = "music",
  #   type = "bar")
  # 
  # bartest18 <- add_trace(
  #   bartest17,
  #   x = mydata$name,
  #   y = mydata$film_noir,
  #   name = "filmnoir",
  #   type = "bar")
  # 
  # bartest19 <- add_trace(
  #   bartest18,
  #   x = mydata$name,
  #   y = mydata$horror,
  #   name = "horror",
  #   type = "bar")
  # 
  # bartest20 <- add_trace(
  #   bartest19,
  #   x = mydata$name,
  #   y = mydata$mystery,
  #   name = "mystery",
  #   type = "bar")
  # 
  # bartest21 <- add_trace(
  #   bartest20,
  #   x = mydata$name,
  #   y = mydata$western,
  #   name = "western",
  #   type = "bar")
  # 
  # bartest22 <- add_trace(
  #   bartest21,
  #   x = mydata$name,
  #   y = mydata$family,
  #   name = "family",
  #   type = "bar")
  # 
  # bartest23 <- add_trace(
  #   bartest22,
  #   x = mydata$name,
  #   y = mydata$sci_fi,
  #   name = "scifi",
  #   type = "bar")
  # 
  # bartest24 <- add_trace(
  #   bartest23,
  #   x = mydata$name,
  #   y = mydata$thriller,
  #   name = "thriller",
  #   type = "bar")
  # 
  # bartest25 <- add_trace(
  #   bartest24,
  #   x = mydata$name,
  #   y = mydata$news,
  #   name = "news",
  #   type = "bar")
  # 
  # bartest26 <- add_trace(
  #   bartest25,
  #   x = mydata$name,
  #   y = mydata$unknown,
  #   name = "bio",
  #   type = "bar")
  # 
  # bartest27A <- add_trace(
  #   bartest26,
  #   x = mydata$name,
  #   y = mydata$other,
  #   name = "other",
  #   type = "bar")
  # 
  # 
  # 
  # ###########ratingplots
  # 
  # mydata3 <- data.frame(mydata$name, mydata$G, mydata$PG, mydata$PG.13,
  #                       mydata$R, mydata$Unrated)
  # ratebars <- plot_ly(mydata3,
  #                     x = mydata$name,
  #                     y = mydata$G,
  #                     name = "G",
  #                     type = "bar")
  # ratebars2 <- add_trace(
  #   ratebars,
  #   x = mydata$name,
  #   y = mydata$PG,
  #   name = "PG",
  #   type = "bar")
  # ratebars3 <- add_trace(
  #   ratebars2,
  #   x = mydata$name,
  #   y = mydata$PG.13,
  #   name = "PG13",
  #   type = "bar")
  # ratebars4 <- add_trace(
  #   ratebars3,
  #   x = mydata$name,
  #   y = mydata$R,
  #   name = "R",
  #   type = "bar")
  # ratebars5A <- add_trace(
  #   ratebars4,
  #   x = mydata$name,
  #   y = mydata$Unrated,
  #   name = "Unrated",
  #   type = "bar")
  # 
  # 
  # ######Experience
  # 
  # mydata4 <- data.frame(mydata$name,mydata$avg_actors, mydata$avg_directors,
  #                       mydata$avg_writers)
  # 
  # expbar <- plot_ly(mydata4,
  #                   x = mydata$name,
  #                   y = mydata$avg_writers,
  #                   name = "Avg Writer Exp.",
  #                   type = "bar")
  # 
  # expbar2 <- add_trace(
  #   expbar,
  #   x = mydata$name,
  #   y = mydata$avg_directors,
  #   name = "Avg Director Exp.",
  #   type = "bar")
  # 
  # expbar3A <- add_trace(
  #   expbar2,
  #   x = mydata$name,
  #   y = mydata$avg_actors,
  #   name = "Avg Cast Exp.",
  #   type = "bar")
  # 
  # 
  # 
  # #######movie type
  # 
  # mydata5 <- data.frame(mydata$name, mydata$documentary, mydata$narrative)
  # 
  # movtypebars <- plot_ly(mydata5,
  #                        x = mydata$name,
  #                        y = mydata$documentary,
  #                        name = "Documentary",
  #                        type = "bar")
  # 
  # movtypebars2A <- add_trace(
  #   mydata5,
  #   x = mydata$name,
  #   y = mydata$narrative,
  #   name = "Narrative",
  #   type = "bar")
  # 
  # 
  # ##### release local
  # mydata6 <- data.frame(mydata$name, mydata$domestic, mydata$foreign)
  # 
  # locateplot <- plot_ly(mydata6,
  #                       x = mydata$name,
  #                       y = mydata$domestic,
  #                       name = "Domestic Release",
  #                       type = "bar")
  # 
  # locateplot2A <- add_trace(
  #   locateplot,
  #   x = mydata$name,
  #   y = mydata$foreign,
  #   name = "International Release",
  #   type = "bar")
  # 
  # 
  # 
  
  
  barplottest <- reactive({
    if ( "Rating" %in% input$selecty) return(ratebars5)
    if ( "Experience" %in% input$selecty) return(expbar3)
    if ( "Genre" %in% input$selecty) return(bartest27) 
    if ( "Release Location" %in% input$selecty) return(locateplot2)
    if ( "Movie Type" %in% input$selecty) return(movtypebars2)
  })
  
  output$barplot <- renderPlotly({   
    dataplots = barplottest()
    print(dataplots)
  })
  
}) 





