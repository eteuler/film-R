
a <- paste("newplot <- (ggplot(data = cust) + ",
 "geom_point(aes_string(x=x,y=y,text = profile,color=factor(x),label=profile),size = quote(cust$bubblesize)) +
  geom_text(aes_string(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(), 
        axis.text.y=element_blank(),axis.ticks=element_blank(), 
        axis.title.x=element_blank(), 
        axis.title.y=element_blank(), 
        panel.background=element_blank(),panel.border=element_blank(),
panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()", sep='')


myplot1  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize1) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

myplot2  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize2) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

myplot3  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize3) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

myplot4  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize4) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

myplot5  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize5) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank())  

myplot6  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize6) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

myplot7  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize7) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

myplot8  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize8) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 

myplot9  <- ggplot(data = cust) +
  geom_point(aes(x=x,y=y,text = profile,color=factor(x),label=profile), size = bubblesize9) +
  geom_text(aes(x=x,y=y,label=profile),hjust=0, vjust=0) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) 