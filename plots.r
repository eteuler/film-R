output$plot <- renderPlot({
  ifelse(category==0, plot, ifelse(category==1, plot1, ifelse(category==2, plot2, ifelse(category==3, plot3, 
        ifelse(category==4, plot4, ifelse(category==5, plot5, ifelse(category==6, plot6, 
        ifelse(category==7, plot7, ifelse(category==8, plot8, ifelse(category==9, plot9
                                                                     ))))))))))

}) 

plot <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

plot1  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize1) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

plot2  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize2) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

plot3  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize3) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

plot4  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize4) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

plot5  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize5) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank())  

plot6  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize6) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

plot7  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize7) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

plot8  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize8) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

plot9  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize9) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 