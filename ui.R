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
              choices = list("Documentary", "Comedy", "Drama", "Action", "Adventure",
                             "Romance", "Thriller", "Biography", "Mystery","Horror",
                             "Film-Noir", "Sci-Fi", "Fantasy", "History", 
                             "Music", "Sports", "War", "Foreign",
                             "Western", "Animation", "Crime", "Family" 
                            ), inline = TRUE),
  #width = 800, 
            

    #make a set of radio buttons for budget selection 
    selectInput("radio", label = h3("4. Select Budget"),
                 choices = list("$5 million +",
                                "$3 million - $5 million",
                                "$1 million - $3 million",
                                "$250K - $1 million",
                                 "Under $250K")), 
                 
  #make select box for cast type
  selectInput("select2", label = h3("5. Cast Experience"),
              choices = list("Early career- under 7 years as an artist or 1st project",
                             "Mid-career - 7 to 25 years as an artist or 2nd project", 
                             "Life-long career- Over 25 years as an artist or large body of work"
                             )), 

  
  #make select box for cast type
  selectInput("select5", label = h3("6. Producer and Director Experience"),
              choices = list("Early career- under 7 years as an artist or 1st project",
                             "Mid-career - 7 to 25 years as an artist or 2nd project",
                             "Life-long career- Over 25 years as an artist or large body of work")), 
  
  #make a set of radio buttons for budget selection 
  radioButtons("radio3", label = h3("7. Story Concept"),
               choices = list("Original", "Adapted")),           
  
  #make a text input box
  textInput("text", label = h3("8. Please enter key words to describe your film"), value = "Enter text..."),
  
  
  #make an action button
  # tags$head(tags$script(src = "message-handler.js")), 
         actionButton(inputId ="Results", label = "Submit")), width = 12),
    
 
  tabPanel("Results",
    helpText(strong('Results')),
    plotlyOutput("trendPlot"),
    verbatimTextOutput("info"),
     tags$a(strong("Download your marketing template here"),
            href = "Marketing_Template.pdf"),
           
    helpText(strong('Distribution Information:')),
    img(src="andromedapic.jpg", height = 600, width = 1200)
    
      ),
  navbarMenu("Customer Segments",
  tabPanel("Entertainer",
           titlePanel("Entertainer"),
                     wellPanel( 
     p("Most millennials, 61.13% fall into this segment (age 18-30). College students and college graduates.
     Viewers seeking exciting entertainment
     56.21% watch films based on popularity, 37.22% based on friend recommendations, and 37.78% based on genre or synopsis"),
     p(strong("Demographic of active social media users by Race and Ethnicity (Latinos, Black, White)")),
     p("Daily Facebook users: 71%"),
     p("Daily Snapchat users: 45%"),
     p("Daily Instagram users: 26%"),
     p("Daily Twitter users: 23%:"),
     p("Daily Pinterest users: 28%"),
     p(strong("Heavily use digital media sites"),
     p("Netflix: 81.79%"),
     p("HBO GO: 37.11%"),
     p("Amazon Streaming: 56.36%"),
     p("YouTube: 68.38%"),
     p("Cable/Satellite Streaming or on-demand Services: 42.61%"),
     p("Sling TV: 0.69%"),
     p(strong("Advertising:")),
     p("Social media by creating a short video clip that is catchy")
    
           ))),
  tabPanel("Artist",
           titlePanel("Artist"),
            wellPanel(
  p("Tend to be of an older group (age 31 to 50) This group are seen as the connectors. 
  51.09% of people somewhat find themselves watching films that include the same actors and directors.
  44.88% are likely to watch at least 1 movie per given week. Preferred Genres are Drama, Classics and Musical                                   
  A film with a production budget of 100K would resonate with this segment more than a film with a production budget of 20 million
  Get very excited about new ideas and projects and are more willing to watch films from different cultures. They want back-stories, bonus content, sneak peeks, etc."),
  p(strong("Demographic Based on Education"),
  p("More educated:"),
  p("Bachelor’s Degree: 34.86%"),
  p("Master’s Degree: 24.65%"),
  p("PhD: 2.11%"),
  p(strong("Demographic of social media users"),
  p("Most active on Facebook, also less active on YouTube and Instagram"), 
  p("Use Netflix (81.79%)."),
  p("Amazon Prime (56.36%)."),
  p("Cable/Satellite streaming (54.64%)."), 
  p("On-demand services (42.61%)."),
  p(strong("Advertising:")),
  p("“Cool factor” - real world integrations,
  Prefer non-traditional ads, Appreciates visually appealing videos.") 
            )))),                     
  tabPanel("Thinker",
  titlePanel("Thinker"),
          wellPanel(
                    p("Also of an older age group (31 to 50) but older than those driven by an appreciation for art (age 51 and up)
                    Favors intellectually stimulating movies. Adults who are quality-driven, review driven, subject-matter driven. A film idea and vision is important to them. Likely to already be familiar with the independent film industry
                    Most willing to watch films about different cultures. Attracted to a wider range of movies dealing with more mature themes.
                    Want stories that lead to personal growth, productivity, and better living. Serious movies appeal to the mature audiences"),
                    p(strong("Demographic Based on Education")),
                    p("Master’s Degree: 24.65%"),
                    p("PhD: 2.11%"),
                    p("Successful in their careers and enjoy a purposeful film such as documentaries and adventures."),
                    p(strong("Demographic of social media users"),
                    p("Least active on Social Media, still use Facebook and YouTube"), 
                    p("Facebook users age 51 and up is 15%"),
                    p(strong("Advertising: "),
                    p("Ads that invite interest and don’t try to persuade (branded content)"),
                    p("TV advertising. Advertising opens the movie."),
                    p("Attracting older viewers include an increased production of niche pictures aimed at specific demographics"),
                    p("20% were influenced by newspaper reviews (least effective)"),
                    p("Appreciates indie films for being much more review-driven than Hollywood movies")
           ))))
))))
