setwd("C:/bigdataR")
getwd()
data<-read.csv("descriptive.csv",header = T)
head(data)
type<- data$type
type
type.table <- table(type)
par(mfrow=c(1,2))# 한 행에 2개 plot
barplot(type.table)#빈도분석 결과 plot
pie(type.table)

pass<-data$pass
pass
pass.table<-table(pass)
pass.table
barplot(pass.table)
pie(pass.table)
par(mfrow=c(1,1))


age <- data$age
age
summary(age)
mean(age)
sd(age)
var(age)
install.packages("moments")
library(moments)
skewness(age)
kurtosis(age)
hist(age,freq=F)#밀도 히스토그램램
lines(density(age),col='blue') #밀도분포곡선선
x<-seq(40,70,1) #x축 값(변량)

curve(dnorm(x,mean(age),sd(age)),col='red',add=T) #이상적인 정규분포 곡선선


#교차분석
data <- read.csv("cleanDescriptive.csv",header = T,fileEncoding = "euc-kr")
head(data)
x<-data$level2 #부모의 학력
y<-data$pass2 #자식의 대학진학여부부
x
y
result<-data.frame(Level=x,Pass=y)
head(result)
dim(result)
table(result) # 교차분할표

install.packages("gmodels")
library(gmodels)
library(ggplot2)
head(diamonds)
CrossTable(x=diamonds$color,y=diamonds$cut) # 교차분할표표


#부모학력과 자식진학 관계
CrossTable(x,y) #교차분할표표

#카이스퀘어 검
CrossTable(x=diamonds$cut,y=diamonds$color,chisq=TRUE) # 교차분할표표

#일원 카이스퀘어(적합도 검정)
chisq.test(c(4,6,17,16,8,9)) #주사위던지기(60회)

chisq.test(c(9,11,12,8,9,11))

data <- textConnection("스포츠음료 관측도수
1 41
2 30
3 51
4 71
5 61
")
data
x <- read.table(data,header = T)
x
chisq.test(x$관측도수)


#이원 카이스퀘어 검정
CrossTable(x,y,chisq = T)

setwd("C:/BigdataR/Part-III")
data<-read.csv("homogenity.csv")
head(data)
data <- subset(data,!is.na(survey),c(method,survey))
data$method2[data$method==1]<-"방법1"
data$method2[data$method==2]<-"방법2"
data$method2[data$method==3]<-"방법3"
data$survey[data$survey==1]<-"1.매우만족"
data$survey[data$survey==2]<-"2.만족"
data$survey[data$survey==3]<-"3.보통"
data$survey[data$survey==4]<-"4.불만족"
data$survey[data$survey==5]<-"5.매우불만족"
table(data$method2,data$survey2)
chisq.test(data$method2,data$survey2)

setwd("C:/BigdataR/Part-III")
smoke <-read.csv("smoke.csv",header=TRUE)
head(smoke)

data<-read.csv("cleanData.csv",header=T , fileEncoding = "euc-kr")
head(data)
x<-data$position
y<-data$age3
length(x)
plot(x,y)
CrossTable(x,y,chisq = T)
response<-read.csv("response.csv",header = T)
response$job2[response$job==1]<-"학생"
response$job2[response$job==2]<-"직장인인"
response$job2[response$job==3]<-"주부부"
response$response2[response$response==1]<-"무응답"
response$response2[response$response==2]<-"낮음음"
response$response2[response$response==3]<-"높음음"
head(response)
CrossTable(x=response$job2,y=response$response2,chisq = T)
