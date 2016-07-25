library(plotly)
library(ggplot2)
shinyServer(function(input, output) { 
  output$text10 <- renderText({ 
    paste("Your movie type is", input$radio4)
  }) 
  
  output$text11 <- renderText({ 
    paste("I would like my film distributed", input$radio5)
  })
category = 5
output$plot <- renderPlot({
 ggplot(data = cust) +
    geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), 
               size =  
                 ifelse(category==0, bubblesize,
                 ifelse(category==1, bubblesize1,
                 ifelse(category==2, bubblesize2,
                 ifelse(category==3, bubblesize3,
                 ifelse(category==4, bubblesize4,
                 ifelse(category==5, bubblesize5,
                 ifelse(category==6, bubblesize6,
                 ifelse(category==7, bubblesize7,
                 ifelse(category==8, bubblesize8,
                 ifelse(category==9, bubblesize9
                )))))))))))  +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

}) 


output$info <- renderPrint({
 paste("x=", input$plot_click$x, "y=", input$plot_click$y)
})

# output$info <- renderPrint({
#   xy_str <- function(e) {
#     if(is.null(e)) return("NULL\n")
#     paste0("x=", round(e$x, 1), " y=", round(e$y, 1), "\n")
#   }
#   xy_range_str <- function(e) {
#     if(is.null(e)) return("NULL\n")
#     paste0("xmin=", round(e$xmin, 1), " xmax=", round(e$xmax, 1), 
#            " ymin=", round(e$ymin, 1), " ymax=", round(e$ymax, 1))
#   }
#   
#   paste0(
#     "click: ", xy_str(input$plot_click)
#     
#   )
# })


 # output$image_clickinfo <- renderPrint({ 
 #   cat("Click:\n") 
 #   str(input$image_click) }) 

# output$image_clickinfo <- renderPrint({
#   cat("Click:\n")
#   str(input$plot_click) }) 


# output$click <- renderPrint({
#   cust <- event_data("plot_click")
#   if (is.null(cust)) "Click events appear here (double-click to clear)" else cust
# })

 # output$plot_click <- renderPrint({
 #  cat("Click:\n")
 #   str(input$plotclick)
 # })

output$text2 <- renderText({ 
  paste("You have chosen a budget of", input$radio)
}) 


output$pdflink <- downloadHandler(
  filename = "Marketing_Template.pdf",
  content = function(file){
    file.copy('A_Marketing_Template1.pdf',file, overwrite = FALSE)
  })
  
  
  output$text3 <- renderText({ 
    paste("Your cast is", input$select2)
  }) 
  
  output$text4 <- renderText({ 
    paste("Your film's rating is ", input$select3)
  })
  
  output$text5 <- renderText({ 
    paste("Your ideal distribution platforms are", input$radio2)
  })
  
  output$text6 <- renderText({ 
    paste("Your preferred marketing strategy is", input$select4)
  }) 
  
  output$text7 <- renderText({ 
    paste("Your Director/Producer career stage is", input$select5)
  })
  
  output$text8 <- renderText({ 
    paste("Your story concept is", input$radio3)
  })
  
  output$text9 <- renderPrint({ input$text })
}) 



  

