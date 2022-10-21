#연구가설 : 프로모션 후 기존 구매비율보다 향상되었다
#귀무가설 : 프로모션 전과 후 구매비율을 차이가 없다

setwd("C:/BigdataR")
hdtv <- read.csv("hdtv.csv",header = T)
head(hdtv)
x<-hdtv$buy
summary(x)
length(x)
table(x)
library(prettyR)
freq(x)
binom.test(10,50,p=0.15)
binom.test(10,50,p=0.15,alternative = "greater")
binom.test(10,50,p=0.15,alternative = "less")

#프로모션 전과 후 구매비율 차이가 없다


#모집단과 표본의 차이가 있는가 검정
#연구가설 : 수집한 표본이 우리나라 평균과 차이가 있다.
#귀무가설 : 수집한 표본과 우리나라 평균간 차이가 없다.
#정규성 검정
#전체학생 : 148.5
#표본 : 50명


stheight<- read.csv("student_height.csv",header = T)
head(stheight)
height<-stheight$height
height
N <- 50 #표본수수
X<-mean(height) #표본평균균
S<-sd(height) #표본 표준편차(모집단표준편차 모를 경우) 
X
low<-X - (1.96*S)/sqrt(N)
high<-X+(1.96*S)/sqrt(N)          
low;high
#정규성 검정
#귀무가설 : 정규분포와 차이가 없다.
#대립가설 : 정규분포와 차이가 없다.
shapiro.test(height)
# 정규분포와 차이가 있다.
hist(height)
qqnorm(height)
qqline(height,lty=1,col='blue')
#평균차이 검정 : t-test
t.test(height,mu=148.5)
#귀무가설 채택, 모집단과 차이가 없다

#두 집단 비율차이 검정
#남학생, 여학생 만족도 차이
#연구가설 : 남학생과 여학생의 만족도 차이가 있다
#귀무가설 : 남학생과 여학생의 만족도 차이가 없다
#만족 :1 , 불만족 :0
#남자:1 여자:2
data <-read.csv("two_sample.csv",header = T)
head(data)
summary(data)


s1<-c(1,2,1,2,3,4,2,3,4,5)
s2<-c(1,3,1,2,3,4,2,4,3,4)
s3<-c(2,3,2,3,2,3,5,3,4,2)
s4<-c(2,4,2,3,2,3,5,3,4,1)
s5<-c(4,5,4,5,2,1,5,2,4,3)
s6<-c(4,3,4,4,2,1,5,2,4,2)
name<-1:10
subject<-data.frame(s1,s2,s3,s4,s5,s6)
str(subject)
#-------------------------------
pc<-prcomp(subject) #주성분 분석
summary(pc)
plot(pc)
#---------------------------------------------------------
#고유값과 고유벡터
en<-eigen(cor(subject))
en$values
en$vectors
plot(en$values,type="o")  

cor(subject) #상관계수수
result<-factanal(subject,factor=2,rotation = "varimax") #요인분석석
result
#요인분석 결과 p-value 가 0.05보다 작을 경우 요인수 증가 후 분석
result<-factanal(subject,factors = 3,"varimax",scores = "regression")
rsult
result
result$loadings
print(result,digits=2,cutoff=0.5)
print(result$loadings,cutoff=0)
result$scores
plot(result$scores[,c(1:2)],main="Factor1과 Fator2요인점수 행렬")
text(result$scores[,1],result$scores[,2],labels=name,cex=0.7,pos=3,col="blue")     
points(result$loadings[,c(1:2)],pch=19,col="red")
text(result$loadings[,1],result$loadings[,2],labels = rownames(result$loadings),cex=0.8,pos=3,col="red")
plot(result$scores[,c(1,3)],main="Factor1과 Factor3요인점수 행렬렬")
text(result$scores[,1],result$scores[,3],labels = name,cex = 0.7,pos = 3,col="blue")
points(result$loadings[,c(1,3)],pch=19,col="red")
text(result$loadings[,1],result$loadings[,3],labels = rownames(result$loadings),cex=0.8,pos=3,col="red")
library(scatterplot3d)
Factor1<-result$scores[,1]
Factor2<-result$scores[,2]
Factor3<-result$scores[,3]
d3<-scatterplot3d(Factor1,Factor2,Factor3,type = 'p')
loadings1<-result$loadings[,1]
loadings2<-result$loadings[,2]
loadings3<-result$loadings[,3]
d3$points3d(loadings1,loadings2,loadings3,bg='red',pch=21,cex=2,type='h')


#요인분석(요인제거)
install.packages('memisc')
library(memisc)
data.spss<-as.data.set(spss.system.file('drinking_water.sav'))
data.spss[1:11]#1번 - 11번 문항 데이터셋셋
drinking_water<-data.spss[1:11]
drinking_water_df<-as.data.frame(data.spss[1:11])
str(drinking_water_df)
result2<-factanal(drinking_water_df,factors = 3,rotation = "varimax")
result2
dw_df<-drinking_water_df[-4]
str(dw_df)
dim(dw_df)
s<-data.frame(dw_df$Q8,dw_df$Q9,dw_df$Q10,dw_df$Q11)
c<-data.frame(dw_df$Q1,dw_df$Q2,dw_df$Q3)
p<-data.frame(dw_df$Q5,dw_df$Q6,dw_df$Q7)
satisfaction<-round(s$dw_df.Q8+s$dw_df.Q9+s$dw_df.Q10+s$dw_df.Q11/ncol(s),2)
closeness<-round((c$dw_df.Q1+c$dw_df.Q2+c$dw_df.Q3)/ncol(c),2)
pertinence<-round((p$dw_df.Q5+p$dw_df.Q6+p$dw_df.Q7)/ncol(p),2)
drinking_water_factor_df<-data.frame(satisfaction,closeness,pertinence)
colnames(drinking_water_factor_df)<-c("제품만족도","제품친밀도","제품적절성성")
cor(drinking_water_factor_df)


product<-read.csv("C:/BigdataR/Part-III/product.csv",header = T,fileEncoding = "euc-kr")
head(product)
summary(product)
sd(product$제품_친밀도);sd(product$제품_적절성);sd(product$제품_만족도)
cor(product$제품_친밀도,product$제품_적절성)
cor(product$제품_친밀도,product$제품_만족도)
cor(product$제품_적절성,product$제품_만족도)
cor(product$제품_적절성+product$제품_친밀도,product$제품_만족도)
cor(product,method = "pearson")
install.packages("corrgram")
library(corrgram)
corrgram(product)
corrgram(product,upper.panel = panel.conf)
corrgram(product,lower.panel = panel.conf)         
install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
chart.Correlation(product,histogram = ,pch="+")
cor(product,method = "spearman")
