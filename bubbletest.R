library(plotly)
profile = c("segment1", "segment2", "segment3","segment4")
bubblesize = c(10, 15, 18, 25)
bubblesize1 = c(20, 17, 15, 13)
bubblesize2 = c(25, 30, 21, 18)
bubblesize3 = c(16, 18, 27, 23)
bubblesize4 = c(23, 25, 20, 30)
bubblesize5 = c(28, 15, 20, 24)
bubblesize6 = c(20, 28, 24, 16)
bubblesize7 = c(18, 28, 30, 22)
bubblesize8 = c(24, 18, 20, 29)
bubblesize9 = c(29, 23, 20, 26)
x = c(5, 6, 7, 8)
y = c(5, 5, 5, 5)
cust = data.frame(profile, bubblesize, x, y) 

axis <- list(
  title = "",
  zeroline = FALSE,
  showline = FALSE,
  showticklabels = FALSE,
  showgrid = FALSE 
  )

plot_ly(cust, x = x, y = y, size = bubblesize, text = paste(profile), color = x,
        mode = "markers") 
layout(xaxis = axis, yaxis = axis) 





