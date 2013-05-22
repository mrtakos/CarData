library(ggplot2)
library(gdata)
library(reshape2)
carfile <- "2010 Brand Reliability Passenger Car.csv"
setwd("F:/")
cardata = read.csv(carfile)
summary(cardata)
cardata2 <- melt(cardata,id.vars="Make",measure.vars=c("X5","X10","X15","X20","X25"))
show(cardata2)
#write.csv(cardata2,"2010 Reliability Passenger Car.csv")

reli.df = read.csv("2010 Reliability Passenger Car.csv")
names(reli.df)
qplot(data=reli.df,x=Age,y=Reli.Rate,color=Make,geom="line",ylab="% In Use")