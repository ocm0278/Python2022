N=10000
X=165.1
S=2
low<-X-1.96*S/sqrt(N)
high<-X+1.96*S/sqrt(N)
low;high

#표준오차
(low-X)*100
(high-X)*100

#모비율의 구간 측정
# A 반도체 회사의 150을 표본조사해서 90명이 여자임을 확인했다. 이 회사 전체의 여자 비율을 구간추정하세요(신뢰구간 95%)

n<-150
pbar<-90/150
qbar<-1-pbar
pbar
qbar
low <- pbar - 1.96*sqrt((pbar*qbar)/n)
hig<- pbar + 1.96*sqrt((pbar*qbar)/n)
low;high

setwd("C:/BigdataR")
data <- read.csv("one_sample.csv",header = T)
head(data)
x<-data$survey
summary(x)
length(x)
table(x)
install.packages("prettyR")
library(prettyR)
freq(x)
n<-150
binom.test(14,n,p=0.2) #양측검정(차이만 검정)

binom.test(14,n,p=0.2,alternative = "two.sided",conf.level = 0.95)#양측검정 명시,95% 신뢰수준 기본값값
binom.test(14,n,p=0.2,alternative = "greater",conf.level = 0.95)

binom.test(14,n,p=0.2,alternative = "less",conf.level = 0.95)
#귀무가설 기각, 연구가설은 2019년 보다 불만족 수가 낮아졌다 를 채택

# 노트북 사용시간 검정(국내와 A사 비교)
data <- read.csv("one_sample.csv",header = T)
str(data)

x<-data$time
x
mean(x)
mean(x,na.rm = T)
x1<-na.omit(x)
na.omit(x)
mean(x1)

#정규성 검정(정규분포와 다르지 않다 라는 귀무가설을 채택해야 함,p-value 가 0.05 보다 커야함)
shapiro.test(x1)

par(mfrow=c(1,2))
hist(x1)
qqnorm(x1)
qqline(x1,lty=1,col='blue')

t.test(x1,mu=5.2,alternative = "two.side",conf.level=0.95)
t.test(x1,mu=5.2,alternative = "greater",conf.level=0.95)
t.test(x1,mu=5.2,alternative = "less",conf.level=0.95)

qt(7.083e-05,108)
#t 값이 귀무가설 임계값(절대값)보다 클 경우 귀무가설을 기각한다.(t 테스트 검정)

#교육방법에 따른 만족도 차이
#불만족(0),만족(1)
setwd("C:/BigdataR/Part-III")
data <- read.csv("two_sample.csv",header=T)
head(data)
x<-data$method
y<-data$survey
table(x)
table(y)
table(x,y)

prop.test(c(110,135),c(150,150),alternative = "two.sided",conf.level = 0.95)
prop.test(c(110,135),c(150,150),alternative = "greater",conf.level = 0.95)
prop.test(c(110,135),c(150,150),alternative = "less",conf.level = 0.95)

#교육방법에 다른 실기시험 성적:차이 검정

data <- read.csv("two_sample.csv",header = T)
head(data)
result<-subset(data,!is.na(score),c(method,score))
head(result)
tail(result)
head(data,n=30)
head(result,n=30)
a<-subset(result,method==1) #PT 교육육
b<-subset(result,method==2)#코딩교육
head(a,n=30)
a1<-a$score
a1
b1<-b$score
b1
mean(a1)
mean(b1)
var.test(a1,b1) #분산 비교
#p-value 가 0.05 보다 클 경우 분산비교 결과 비슷(동질성 있음음)

t.test(a1,b1,confint=T,conf.level = 0.95)
setwd("C:/BigdataR/Part-III")
data<-read.csv("paired_sample.csv",header = TRUE)
result<-subset(data,!is.na(after),c(before,after))
x<-result$before
y<-result$after
x;y
length(x)
length(y)
mean(x)
mean(y)
var.test(x,y,paired=TRUE)
setwd("C:/BigdataR/Part-III")
data<-read.csv("three_sample.csv",header=TRUE)
head(data)
data<-subset(data,!is.na(score),c(method,score))
head(data)
length(data$score)
plot(data$score)
barplot(data$score)
mean(data$score)
data2<-subset(data,score<=14)
x<-data2$score
par(mfrow=c(1,1))
boxplot(x)
data2$method2[data2$method==1]<-"방법1"
data2$method2[data2$method==2]<-"방법2"
data2$method2[data2$method==3]<-"방법3"
x<-table(data2$method2)
x
y<-tapply(data2$score,data2$method2,mean)
y
df<-data.frame(교육방법=x,성적=y)
head(df)
bartlett.test(score~method,data=data2)
result<-aov(score~method2,data=data2)
result
summary(result)
TukeyHSD(result)
plot(TukeyHSD(result))
setwd("C:/BigdataR/Part-III")
hdtv<-read.csv("hdtv.csv",header=TRUE)
head(hdtv)
x<-hdtv$buy
summary(x)
length(x)
table(x)
library(prettyR)
freq(x)
