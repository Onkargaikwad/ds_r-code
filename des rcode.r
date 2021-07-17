lava<-datasets::quakes
head(quakes,10) 
tail(quakes,10)
quakes[,c(1,2)]
summary(quakes$depth)
summary(quakes$mag)
summary(quakes$long)
#plot  
plot(quakes$depth,type="l")
plot(quakes$depth,xlab='index',ylab='depth',main='deadex',col='blue')
#histogram
hist(quakes$depth)
hist(quakes$depth,main = 'depth',xlab = 'solar rad',col='green')
#single box plot
boxplot(quakes$long,main="boxplot")
boxplot.stats(quakes$long)$out
#multiple box plot
boxplot(quakes[,1:5],main='multiple')

#finishing 
par(mfrow=c(2,2),mar=c(8,5,2,1),las=1,bty="n")
plot(quakes$long)  
plot(quakes$long,type = "l")  
plot(quakes$long,type = "l")     
plot(quakes$long,type = "l")      
plot(quakes$long,main = 'dept',xlab = 'magnitude',col='red',horiz=TRUE)      
hist(quakes$stations)     
boxplot(quakes$stations)    
boxplot(quakes[,1:4],main='multiple')
#var
var(quakes)

#skewness
# Required for skewness() function
library(moments)
skewness(quakes,na.rm = F)
kurtosis(quakes,na.rm = T)


