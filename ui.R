library(shinythemes)
library(ggplot2)
library(plotly)

shinyUI(fluidPage(theme = shinytheme("cosmo"),
                  navbarPage("Online Film Consulting",
                             id = "tabs", 
                             tabPanel("Film Information", 
                                      sidebarPanel("Fill in the information about your film:",
                                                   helpText("")), 
                                      
                                      mainPanel(align = "left",
                                                #make a set of radio buttons for movie type 
                                                radioButtons("radio4", label = h3("1. Movie Type"),
                                                             choices = list("Narrative", "Documentary")), 
                                                
                                                #make a select box for genre
                                                checkboxGroupInput("select", label = h3("3. Select genre"), 
                                                                   choices = list('Action','Fantasy','Biography', 'Fantasy', 
                                                                                  'History', 'Musical', 'Reality TV', 
                                                                                  'Sport', 'War', 'Adventure', 'Comedy', 'Drama', 
                                                                                  'Romance', 'Talk Show', 'Animation', 'Crime', 
                                                                                  'Game_show', 'Music', 'Film Noir', 'Horror', 
                                                                                  'Mystery', 'Western', 'Family', 'Sci Fi', 
                                                                                  'Thriller', 'News', 'Unknown', 'Other'), inline = TRUE),
                                                #width = 800,
                                                
                                                selectInput("select3", label = h3("4. Film Rating"),
                                                            choices = list("G", "PG", "PG-13", "R", "Unrated")), 
                                                
                                                
                                                
                                                #make a set of radio buttons for budget selection 
                                                selectInput("radio", label = h3("5. Select Budget"),
                                                            choices = list(">30M",
                                                                           ">5M<30M",
                                                                           ">3M<5M",
                                                                           ">1M<3M",
                                                                           ">250K<1M",
                                                                           "<250K")), 
                                                
                                                #make select box for cast type
                                                selectInput("select2", label = h3("6. Cast Experience"),
                                                            choices = list("Early career- under 7 years as an artist or 1st project",
                                                                           "Mid-career - 7 to 25 years as an artist or 2nd project", 
                                                                           "Life-long career- Over 25 years as an artist or large body of work"
                                                            )), 
                                                
                                                #make select box for writer exp 
                                                selectInput("select6", label = h3("7. Writer Experience"),
                                                            choices = list("Early career- under 7 years as an artist or 1st project",
                                                                           "Mid-career - 7 to 25 years as an artist or 2nd project", 
                                                                           "Life-long career- Over 25 years as an artist or large body of work"
                                                            )), 
                                                
                                                
                                                #make select box for cast type
                                                selectInput("select5", label = h3("8. Producer and Director Experience"),
                                                            choices = list("Early career- under 7 years as an artist or 1st project",
                                                                           "Mid-career - 7 to 25 years as an artist or 2nd project",
                                                                           "Life-long career- Over 25 years as an artist or large body of work")), 
                                                
                                                #make a set of radio buttons for budget selection 
                                                radioButtons("radio3", label = h3("9. Story Concept"),
                                                             choices = list("Original", "Adapted")),  
                                                
                                                radioButtons("radio5", label = h3("2. Prefer Internationally or Domestically released?"),
                                                             choices = list("Internationally", "Domestically"), width = 800), 
                                                
                                                
                                                #make a text input box
                                                textInput("text", label = h3("10. Please enter key words to describe your film"), value = "Enter text..."),
                                                
                                                
                                                #make an action button
                                                # tags$head(tags$script(src = "message-handler.js")), 
                                                actionButton(inputId ="Results", label = "Submit")), width = 12),
                             
                             
                             tabPanel("Results",
                                      helpText(strong('Results')),
                                      plotlyOutput("trendPlot"),
                                      verbatimTextOutput("info"),
                                      
                                      helpText(strong('Distribution Information:')),
                                      fluidRow(
                                        column(3,
                                               h5(strong(("Small Distribution Companies (0-5 films)")))
                                               
                                        ),
                                        column(4, offset = 1,
                                               h5(strong("Medium Distribution Companies (6 - 15 films)"))
                                               
                                        ),
                                        column(4,
                                               h5(strong("Large Distribution Companies (16+ films)"))
                                        )
                                      ),
                                      
                                      
                                      tags$a(strong("Download your marketing template here"),
                                             href = "Marketing_Template.pdf"),
                                      fluidRow(
                                        dataTableOutput('tableA')
                                      )
                                      
                                      
                             ),
                             navbarMenu("Customer Segments",
                                        tabPanel("Entertain Me",
                                                 titlePanel("Entertain Me"),
                                                 wellPanel(
                                                   h3("This persona watches films based on ratings, the cast experience, 
                                                      and enjoy domestic films for entertainment.
                                                      They are college students seeking stimulating entertainment"),
                                                   p(strong("Description:"), "This audience prefers bigger budget films with 
                                                     well-known casts, with traditional storylines that center on romance, drama, 
                                                     family comedy and musicals. Their personality tendencies veer towards friendliness,
                                                     warmth and tenderness. Top genres include:" ),
                                                   p(" *Romance 
                                                     *Family
                                                     *Drama
                                                     *Comedy
                                                     *Animation
                                                     *Classics
                                                     *Musicals
                                                     *Horror
                                                     *Action"),
                                                   column(3,
                                                          h5(strong(("Demographics"))),
                                                          p("Age"),
                                                          p("Gender"),
                                                          p("Education")),
                                                   column(4, offset = 1,
                                                          h5(strong("Social Media")),
                                                          p("Daily Facebook users: 71%"),
                                                          p("Daily Snapchat users: 45%"),
                                                          p("Daily Pinterest users: 28%"),
                                                          p("Daily Instagram users: 26%"),
                                                          p("Daily YouTube users: 24%"),
                                                          p("Daily Twitter users: 23%")),
                                                   column(4,
                                                          h5(strong("Digital Platforms")),
                                                          p("Netflix: 81.79%"),
                                                          p("YouTube: 68.38%"),
                                                          p("Amazon Streaming: 56.36%"),
                                                          p("Cable/Satellite Streaming or on-demand Services: 42.61%"),
                                                          p("HBO GO: 37.11%"),
                                                          p("Sling TV: 0.69%")))),
                                        tabPanel("Give Me Art",
                                                 titlePanel("Give Me Art"),
                                                 wellPanel(
                                                   h3("This persona "),
                                                   p(strong("Description:"), "This audience seeks films that are creative,
                                                     abstract, cultured. While genres preferences may vary widely, they are open to edgier
                                                     and more demanding storylines, while seeking thrilling and cerebral experiences. This
                                                     audience most closely aligns to most independent films. " ),
                                                   p(" *Foreign 
                                                     *Classics
                                                     *Horror
                                                     *Independent
                                                     *Documentary
                                                     *Action
                                                     *Drama 
                                                     *Romance
                                                     *Family"),
                                                   column(3,
                                                          h5(strong(("Demographics"))),
                                                          p("Age"),
                                                          p("Gender"),
                                                          p("Education")),
                                                   column(4, offset = 1,
                                                          h5(strong("Social Media")),
                                                          p("Daily Facebook users: 71%"),
                                                          p("Daily Snapchat users: 45%"),
                                                          p("Daily Pinterest users: 28%"),
                                                          p("Daily Instagram users: 26%"),
                                                          p("Daily YouTube users: 24%"),
                                                          p("Daily Twitter users: 23%")),
                                                   column(4,
                                                          h5(strong("Digital Platforms")),
                                                          p("Netflix: 81.79%"),
                                                          p("YouTube: 68.38%"),
                                                          p("Amazon Streaming: 56.36%"),
                                                          p("Cable/Satellite Streaming or on-demand Services: 42.61%"),
                                                          p("HBO GO: 37.11%"),
                                                          p("Sling TV: 0.69%")))),                     
                                        tabPanel("Thirst for Knowledge",
                                                 titlePanel("Thirst for Knowledge"),
                                                 wellPanel(
                                                   h3("This persona are attracted to a wider range of movies dealing with mature themes"),
                                                   p(strong("Description:"), "This audience seeks information, and is also open to stories with
                                                     intense, edgy and abstract storylines. These viewers are conscientious, purposeful
                                                     and intellectually curious. Top genres include:" ),
                                                   p(" * Documentary
                                                     * Western
                                                     * War 
                                                     * Suspense
                                                     * Erotic
                                                     * Horror 
                                                     * Cult
                                                     * Foreign
                                                     * Indie"),
                                                   column(3,
                                                          h5(strong(("Demographics"))),
                                                          p("Age"),
                                                          p("Gender"),
                                                          p("Education")),
                                                   column(4, offset = 1,
                                                          h5(strong("Social Media")),
                                                          p("Daily Facebook users: 71%"),
                                                          p("Daily Snapchat users: 45%"),
                                                          p("Daily Pinterest users: 28%"),
                                                          p("Daily Instagram users: 26%"),
                                                          p("Daily YouTube users: 24%"),
                                                          p("Daily Twitter users: 23%")),
                                                   column(4,
                                                          h5(strong("Digital Platforms")),
                                                          p("Netflix: 81.79%"),
                                                          p("YouTube: 68.38%"),
                                                          p("Amazon Streaming: 56.36%"),
                                                          p("Cable/Satellite Streaming or on-demand Services: 42.61%"),
                                                          p("HBO GO: 37.11%"),
                                                          p("Sling TV: 0.69%")))
                                                 
                                                   )),
                             tabPanel("Distribution Company Info", 
                                      selectInput("selecty", label = h3("Select Y axis"),
                                                  choices = list("Rating", "Experience", "Genre",
                                                                 "Release Location", "Movie Type")),
                                      plotlyOutput("barplot"))
                                        )))
