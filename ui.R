library(shinythemes)
library(ggplot2)
library(plotly)

shinyUI(fluidPage(theme = shinytheme("cosmo"),
 navbarPage("Online Film Consulting",
    tabPanel("Film Information", 
             sidebarPanel("Fill in the information about your film:",
      helpText("")), 
      
      mainPanel(align = "center",
      #make a set of radio buttons for budget selection 
      radioButtons("radio4", label = h3("1. Movie Type"),
                  choices = list("Narrative", "Documentary")), 
      
      #make a set of radio buttons for budget selection 
      radioButtons("radio5", label = h3("2. Prefer Internationally or Domestically released?"),
                   choices = list("Internationally", "Domestically"), width = 800),
      
  #make a select box for genre
  checkboxGroupInput("select", label = h3("3. Select genre"), 
              choices = list("Documentary", "Comedy", "Drama", "Action/Adventure",
                             "Romance", "Thriller", "Biography", "Mystery","Horror",
                             "Film-Noir", "Sci-Fi", "Fantasy", "History", 
                             "Musical", "Reality-TV", "Sport", "War", "Talk-Show", 
                             "Western", "Animation", "Crime", "Family", "Game-Show", 
                            "Music", "News")), width = 800, 
            

    #make a set of radio buttons for budget selection 
    radioButtons("radio", label = h3("4. Select Budget"),
                 choices = list("$5 million +", "$3 million - $5 million",
                                "$1 million - $3 million", "$250K - $1 million",
                                "Under $250K")), 
                 
  #make select box for cast type
  selectInput("select2", label = h3("5. Cast Recognition"),
              choices = list("Early career- under 7 years as an artist or 1st project",
                             "Mid-career - 7 to 25 years as an artist or 2nd project", 
                             "Life-long career- Over 25 years as an artist or large body of work"
                             )), 
  
  #make select box for filmm rating 
  selectInput("select3", label = h3("6. Film Rating"),
              choices = list("G", "PG", "PG-13", "R", "Unrated", "All ratings")),
  
  #make checkbox buttons for distribution platforms
  checkboxGroupInput("radio2", label = h3("7. Distribution Platforms"),
               choices = list("VOD + Digital", "TV + SVOD", "Non-Theatrical",
                              "DVD/Home Video", "Semi-Theatrical", "Festivals", "Tours",
                              "One-offs", "Theatrical", "Other")),
  

  
  #make select box for cast type
  selectInput("select5", label = h3("8. Producer and Director Career Stage"),
              choices = list("Early career- under 7 years as an artist or 1st project",
                             "Mid-career - 7 to 25 years as an artist or 2nd project",
                             "Life-long career- Over 25 years as an artist or large body of work")), 
  #make a set of radio buttons for budget selection 
  radioButtons("radio3", label = h3("9. Story Concept"),
               choices = list("Original", "Adapted")),           
  
  #make a text input box
  textInput("text", label = h3("10. Please enter key terms to describe your film"), value = "Enter text..."),
  
  
  #make an action button
         submitButton("Submit")), width = 12),
    
    
  tabPanel("Results",
    helpText(strong('Film Information:')),
    textOutput("text10"),
    textOutput("text11"),
    
    # if(category == 1) {plotlyOutput <- myplot1},
    # if(category == 2) {plotlyOutput <- myplot2},
    # if(category == 3) {plotlyOutput <- myplot3},
    # if(category == 4) {plotlyOutput <- myplot4},
    # if(category == 5) {plotlyOutput <- myplot5},
    # if(category == 6) {plotlyOutput <- myplot6},
    # if(category == 7) {plotlyOutput <- myplot7},
    # if(category == 8) {plotlyOutput <- myplot8},
    # if(category == 9) {plotlyOutput <- myplot9},
    # if(category == 10) {plotlyOutput <- myplot10},
    
    
    plotlyOutput("trendPlot"),
    verbatimTextOutput("info"),
    textOutput("text2"),
    textOutput("downloadData"), 
    
    tags$a("Download Template",
                   href="A_Marketing_Template1.pdf"),
    textOutput("text3"),
    textOutput("text4"), 
    textOutput("text5"), 

    textOutput("text7"), 
    textOutput("text8"),
    textOutput("text9"),
    img(src="andromedapic.jpg", height = 600, width = 500)
    ),
  navbarMenu("Customer Segments",
  tabPanel("Segment 1"),
  tabPanel("Segment 2"),
  tabPanel("Segment 3"),
  tabPanel("Segment 4"))
           )))

