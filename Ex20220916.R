getwd()
setwd("C:/bigdataR")
library(lattice)
install.packages("mlmRev")
library(mlmRev)
str(Chem97)
head(Chem97)

help(histogram)

histogram(~gcsescore, data = Chem97)
histogram(~gcsescore | factor(score), data = Chem97) # 범주형


densityplot(~gcsescore | factor(score), data = Chem97,groups = gender, auto.key =T,plot.points=F)

help(barchart)
help(VADeaths)
str(VADeaths)
summary(VADeaths)
VADeaths
dft <- as.data.frame.table(VADeaths)
str(dft)
dft

barchart(Var1~Freq | Var2, data =dft,layout = c(4,1),origin=0)
help(dotplot)
dotplot(Var1~ Freq | Var2, data = dft,layout = c(4.1))
dotplot(Var1~Freq,data =dft , groups = Var2,type='o',auto.key=list(space="right",points=T,lines=T))


xyplot(Ozone ~ Wind | factor(Month) ,data = airquality,layout=c(5,1))        

head(quakes)
tplot <- xyplot(lat ~ long,data=quakes,pch=".") # 그래프 저장
tplot <- update(tplot,main="1964년 이후 지진 위치치")
print(tplot)

head(quakes)
range(quakes$depth)
summary(quakes$depth)      
quakes$depth2[quakes$depth >=40 & quakes$depth <= 150] <- 1
quakes$depth2[quakes$depth >=151 & quakes$depth <= 250] <- 2
quakes$depth2[quakes$depth >=251 & quakes$depth <= 350] <- 3
quakes$depth2[quakes$depth >=351 & quakes$depth <= 450] <- 4
quakes$depth2[quakes$depth >=451 & quakes$depth <= 550] <- 5
quakes$depth2[quakes$depth >=551 & quakes$depth <= 680] <- 6
head(quakes)

xyplot(lat ~ long | factor(depth2),data = quakes)

head(airquality)

xyplot(Ozone + Solar.R ~ Wind| factor(Month),data =airquality, col=c("blue","red"),layout=c(5,1))

numgroup <- equal.count(1:150,number=4,overlap=0)
numgroup

depthgroup <- equal.count(quakes$depth,number=5, overlap=0)
depthgroup

xyplot(lat ~long | depthgroup, data=quakes)


range(quakes$mag)

head(quakes,1000)

magnitudegroup <- equal.count(quakes$mag,number=2,overlap=0)
magnitudegroup

xyplot(lat~ long |magnitudegroup,data=quakes,main = "Fiji Earthquakes(magnitude)",ylap="latitude",xlab="longitude",pch="@",col="blue")
