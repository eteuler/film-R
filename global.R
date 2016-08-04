setwd("~/andromeda/App-1")
library(plotly)
library(shinythemes)
library(DT)
profile = c("Entertainer", "Artist", "Thinker")
bubblesize = c(30, 30, 30)
bubblesize1 = c(30, 30, 30)
bubblesize2 = c(30, 30, 30)
bubblesize3 = c(16, 18, 27)
bubblesize4 = c(230, 250, 300)
bubblesize5 = c(28, 15, 30)
bubblesize6 = c(30, 28, 24)
bubblesize7 = c(18, 28, 30)
bubblesize8 = c(24, 18, 30)
bubblesize9 = c(29, 23, 30)
x = c(5, 6, 7)
y = c(5, 5, 5)
cust = data.frame(profile, bubblesize, x, y) 

distrib = read.csv("distributorsmaster.csv")
distrib = mutate(distrib, Size = ifelse(total_films<5, 'Small', 
                                        ifelse(total_films<15,'Medium','Large')))

distrib = mutate(distrib, average_budget = as.numeric(distrib$average_budget))

get_distrib = function(data, scaled_data, genre_vec, budget_n, actors, directors, writers, rating_vec,
                       doc_nar_vec, for_dom_vec, top_n){
  
  genre_cols = names(select(data, action:other))
  exp_cols = c('avg_actors','avg_directors','avg_writers')
  budget = 'average_budget'
  doc_nar_cols = c('documentary','narrative')
  for_dom_cols = c('foreign','domestic')
  rating_cols = c('G','PG','PG.13','R','Unrated')
  similarity_cols = c(genre_cols, exp_cols, budget, doc_nar_cols, for_dom_cols, rating_cols)
  
  #get distributions for scaling
  budget_mean = mean(log(data$average_budget+1), na.rm=T)
  budget_sd = sd(log(data$average_budget+1), na.rm = T)
  
  actor_mean = mean(log(data$avg_actor+1))
  actor_sd = sd(log(data$avg_actor+1))
  
  director_mean = mean(log(data$avg_director+1))
  director_sd = sd(log(data$avg_director+1))
  
  writer_mean = mean(log(data$avg_writer+1))
  writer_sd = sd(log(data$avg_writer+1))
  
  trans = function(x) log(x+1)
  
  if(actors=='Early career- under 7 years as an artist or 1st project') actors = (trans((7+0)/2)-actor_mean)/actor_sd/3
  if(actors=='Mid-career - 7 to 25 years as an artist or 2nd project') actors = (trans((25+7)/2)-actor_mean)/actor_sd/3
  if(actors=='Life-long career- Over 25 years as an artist or large body of work') actors = (trans(34)-actor_mean)/actor_sd/3 #34 is mean of all distrib >25
  
  if(directors=='Early career- under 7 years as an artist or 1st project') directors = (trans((7+0)/2)-director_mean)/director_sd/3
  if(directors=='Mid-career - 7 to 25 years as an artist or 2nd project') directors = (trans((25+7)/2)-director_mean)/director_sd/3
  if(directors=='Life-long career- Over 25 years as an artist or large body of work') directors = (trans(34)-director_mean)/director_sd/3 #34 is mean of all distrib >25
  
  if(writers=='Early career- under 7 years as an artist or 1st project') writers = (trans((7+0)/2)-writer_mean)/writer_sd/3
  if(writers=='Mid-career - 7 to 25 years as an artist or 2nd project') writers = (trans((25+7)/2)-writer_mean)/writer_sd/3
  if(writers=='Life-long career- Over 25 years as an artist or large body of work') writers = (trans(34)-writer_mean)/writer_sd/3 #none over 25
  
  if(budget_n=='<250K') budget_n = (trans((250000)/2)-budget_mean)/budget_sd/3
  if(budget_n=='>250K<1M') budget_n = (trans((1000000+250000)/2)-budget_mean)/budget_sd/3
  if(budget_n=='>1M<3M') budget_n =(trans((3000000+1000000)/2)-budget_mean)/budget_sd/3
  if(budget_n=='>3M<5M') budget_n = (trans((5000000+3000000)/2)-budget_mean)/budget_sd/3
  if(budget_n=='>5M<30M') budget_n = (trans((30000000+5000000)/2)-budget_mean)/budget_sd/3
  if(budget_n=='>30M') budget_n = (trans(63762024)-budget_mean)/budget_sd/3#63762024 is mean for distrib >30M
  
  movie_vec = c(genre_vec, actors, directors, writers,budget_n, doc_nar_vec, for_dom_vec, rating_vec)
  
  data$similarity = unlist(lapply(1:nrow(scaled_data), function(i) {
    cosine(movie_vec, as.numeric(scaled_data[i,similarity_cols]))
  }))
  
  return(data %>% group_by(Size) %>%
           arrange(-similarity) %>% 
           filter(row_number()<=top_n))
} 

scale_distrib = function(data, genre_weight = 2){
  
  genre_cols = names(select(data, action:other))
  exp_cols = c('avg_actors','avg_directors','avg_writers')
  budget = 'average_budget'
  doc_nar_cols = c('documentary','narrative')
  for_dom_cols = c('foreign','domestic')
  rating_cols = c('G','PG','PG.13','R','Unrated')
  similarity_cols = c(genre_cols, exp_cols, budget, doc_nar_cols, for_dom_cols, rating_cols)
  
  #some have no ratings, so make each 20%
  ratings_allzero = rowSums(data[,rating_cols])==0
  data[ratings_allzero,rating_cols] = 1
  data = mutate(data, total_rated = rowSums(data[,rating_cols]))
  #########
  data[,genre_cols] = data[,genre_cols]/data$total_genre
  data[,doc_nar_cols] = data[,doc_nar_cols]/data$total_films
  data[,for_dom_cols] = data[,for_dom_cols]/data$total_films
  data[,rating_cols] = data[,rating_cols]/data$total_rated
  data[,exp_cols] = scale(log(data[,exp_cols]+1))/3
  data[, budget] = scale(log(data[,budget]+1))/3
  
  #replace NA budgets with average (0)
  data = replace_na(data, list(average_budget = 0))
  
  
  return(data)
}

scaled_distrib = scale_distrib(distrib)




