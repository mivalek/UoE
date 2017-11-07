x<-seq(0.0,0.1699,0.0001)   
ytop<-dnorm(0.12,0.08,0.02)
MyDF<-data.frame(x=x,y=dnorm(x,0.08,0.02))
shade1 <- rbind(c(0.12,0), subset(MyDF, x > 0.12), c(MyDF[nrow(MyDF), "X"], 0))
shade2 <- rbind(c(0.12,0),subset(MyDF, x >= 0.12))
library(ggplot2)
p <- qplot(x=MyDF$x, y=MyDF$y, geom="line") 
p + geom_segment(aes(x=0.12,y=0,xend=0.12,yend=ytop)) +
  geom_polygon(data = shade, aes(x, y))


p + geom_polygon(data = shade2, aes(x, y))
