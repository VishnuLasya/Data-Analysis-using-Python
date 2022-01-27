#setting the working directory
setwd('D:\\Spring_2021\\AIT 580_Prof.Harry Foxwell\\final')
getwd()

#loading the libraries
library(ggplot2)
library(corrplot)
library(maps)
library(ggplot2) # Data visualization
library(dplyr)
library(maps)
library(mapdata)

#Importing the cleaned Meteorite Dataset
meteorite <- read.csv("D:\\Spring_2021\\AIT 580_Prof.Harry Foxwell\\final\\Final.csv")
head(meteorite)

#plotting the Mass(kgs) of Meteorites on the World
g <- ggplot(data = meteorite, aes(x = reclong, y = reclat)) +
  borders(database = 'world', fill = "white",colour='black') +
  geom_point(aes(colour = mass), alpha = 1, size = 1.5) +
  labs(y="Longitude", x = "Latitude")+
  ggtitle("Mass(kgs) of Meteorites on the World")+
  scale_colour_gradient(low = 'lightpink', high = 'red')
  
g

#summary statistics
summary(meteorite$mass)

summary(meteorite)

#boxplot for the Summary Statistics of Meteorite Weight

boxplot(meteorite$mass,main="Summary Statistics of Meteorite Weight",col='tan',ylab='weight in kgs',ylim=c(0,0.5))
points(min(meteorite$mass),cex=1.0,pch=1,col='brown')
points(quantile(meteorite$mass,0.25),cex=1.0,pch=2,col="red")
points(median(meteorite$mass),cex=1.0,pch=3,col='yellow')
points(mean(meteorite$mass),cex=1.0,pch=4,col='darkviolet')
points(quantile(meteorite$mass,0.75),cex=1.0,pch=5,col='blue')
points(max(meteorite$mass),cex=1.0,pch=6,col='red')
points(quantile(meteorite$mass,0.75)-quantile(meteorite$mass,0.25),cex=1.0,pch=7,col='black')
legend("topright",c("Min",'Q1',"Median","Mean",'Q3','Max','IQR'),cex=1.0,pch=c(1,2,3,4,5,6,7), col=c('brown',"red","yellow",'darkviolet','blue','red','black'), text.font=1)




#histogram of the years in which meteorites occured
Year <- meteorite$Year
hist(Year,col='coral')

