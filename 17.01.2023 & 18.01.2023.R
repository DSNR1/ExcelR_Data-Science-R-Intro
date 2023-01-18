#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
a <- datasets::airquality

airquality <- datasets::airquality
View(a)
airquality
####Top 10 rows and last 10 rows
head(airquality,5)
tail(airquality,2)
######Columns
a[c(145,140),c(1,2)]

df<-airquality[,-6]
View(df)


summary(airquality[,1])

airquality$Wind

summary(airquality$Wind)
summary(airquality)
sd(airquality$Ozone,na.rm = T)
###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out



# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')


##Home work
e_quakes<-datasets::quakes
sd(quakes$mag,na.rm = T)
var(e_quakes$mag)
skewness(e_quakes$mag)
kurtosis(e_quakes$mag)
#var
#skewness
#kurtosis
#Density plot

a <- datasets::quakes

quakes <- datasets::quakes

View(a)
quakes
####Top 10 rows and last 10 rows
head(quakes,5)
tail(quakes,2)
######Columns
a[c(145,140),c(1,2)]

df<-quakes[,-6]
View(df)


summary(quakes[,1])

quakes$lat

summary(quakes$lat)
summary(quakes)

###########Summary of the data#########

summary(quakes)
summary(quakes$depth) 

#####################
plot(quakes$depth)
plot(quakes$depth,quakes$mag,type="p")
plot(quakes)
# points and lines 
plot(quakes$depth, type= "l") # p: points, l: lines,b: both
plot(quakes$depth, xlab = 'lat', 
     ylab = 'No of Instances', main = 'mag in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(quakes$stations, main = 'long',
        ylab = 'lat', col= 'blue',horiz = F,axes=T)
#Histogram
hist(quakes$stations)
hist(quakes$stations, 
     main = 'depth',
     xlab = 'mag.', col='blue')

#Single box plot
boxplot(quakes$stations,main="Boxplot")
boxplot.stats(quakes$stations)$out



# Multiple box plots
boxplot(quakes[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(quakes$stations)
plot(quakes$stations, quakes$long)
plot(quakes$stations, type= "l")
plot(quakes$stations, type= "l")
plot(quakes$stations, type= "l")
barplot(quakes$stations, main = 'depth',
        xlab = 'mag', col='green',horiz = TRUE)
hist(quakes$stations.R)
boxplot(quakes$stations.R)
boxplot(quakes[,0:4], main='Multiple Box plots')








