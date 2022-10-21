install.packages("randomForest")
library(randomForest)
data(iris)
head(iris)
model =randomForest(Species~.,data=iris)
model

model2 <- randomForest(Species~.,data=iris,ntree=300,mtry=4)
model2

model3=randomForest(Species~.,data=iris,importance=T,na.action=na.omit)
importance(model3)
varlmpPlot(model3)

install.packages("nnet")
library(nnet)
df=data.frame(x2=c(1:6),y=factor(c('no','no','no','yes','yes','yes')))
str(df)

model_net<-nnet(y~.,df,size=1) #size는 은닉층층
summary(model_net)
model_net$fitted.values

p<-predict(model_net,df, type = "class") #예측값
p
df$y
table(p,df$y)


#iris를 활용한 인공신경망 구성
data(iris) # 원본 데이터셋을 원래 상태로 로드드
idx<-sample(1:nrow(iris),0.7*nrow(iris))
idx
train<-iris[idx,] #훈련데이터셋
test<- iris[-idx,] #테스트데이터셋셋

model_iris1<-nnet(Species ~ .,train,size=1)# 은닉층 1개개
summary(model_iris1)


model_iris3<-nnet(Species ~ .,train,size=3) #은닉층 노드3개개
table(predict(model_iris3,test,type="class"),test$Species)
(16+12+15)/nrow(test)


#neuralnet패키지 사용 신경망 구성
install.packages("neuralnet")
library(neuralnet)
idx<-sample(1:nrow(iris),0.7*nrow(iris))
idx
train<-iris[idx,] #훈련데이터셋
test<- iris[-idx,] #테스트데이터셋셋
dim(train)
train$Species2[train$Species=="setosa"]<-1
train$Species2[train$Species=="versicolor"]<-2
train$Species2[train$Species=="virginica"]<-3
train$Species <- NULL
head(train)
head(quakes)
summary(iris)
test$Species2[test$Species=="setosa"]<-1
test$Species2[test$Species=="versicolor"]<-2
test$Species2[test$Species=="virginica"]<-3
test$Species <- NULL

# 정규화 함수
normal <- function(x) {
  return((x-min(x))/(max(x)-min(x)))
}
#apply 함수 사용하여 데이터셋에 normal 함수 적용
train_norm<-as.data.frame(lapply(train,normal))
test_norm<-as.data.frame(lapply(test,normal))
head(train_norm)

model_net<-neuralnet(Species2~.,data = train_norm,hidden = 1)
plot(model_net)

model_result <- compute(model_net,test_norm[c(1:4)])
model_result$net.result
test_norm$Species2
cor(model_result$net.result,test_norm$Species2) #상관분석


x<-matrix(1:9,nrow=3, by=T)
x
dist<-dist(x,method="euclidean")
dist

install.packages("cluster")
library(cluster)
hc <- hclust(dist)
plot(hc)

interview<-read.csv("C:/BigdataR/Part-IV/interview.csv",header = TRUE,fileEncoding = "euc-kr")
names(interview)
head(interview)
interview_df<-interview[c(2:7)]
idist<-dist(interview_df)
head(idist)
hc<-hclust(idist)
hc
plot(hc,hang=-1)
g1<-subset(interview,no==108|no==110|no==107|no==112|no==115)
g2<-subset(interview,no==102|no==101|no==104|no==106|no==113)
g3<-subset(interview,no==105|no==114|no==109|no==103|no==111)
summary(g1)
summary(g2)
summary(g3)
idist<-dist(iris[1:4])
hc<-hclust(idist)
plot(hc,hang=-1)
rect.hclust(hc,k=4,border = "red")
ghc<-cutree(hc,k=3)
ghc
iris$ghc<-ghc
table(iris$ghc)
head(iris)
g1<-subset(iris,ghc==1)
summary(g1[1:4])
g2<-subset(iris,ghc==2)
summary(g2[1:4])
g3<-subset(iris,ghc==3)
summary(g3[1:4])
library(ggplot2)
data(diamonds)
t<-sample(1:nrow(diamonds),1000)
test<-diamonds[t,]
dim(test)
head(test)
mydia<-test[c("price","carat","depth","table")]
head(mydia)
result<-hclust(dist(mydia),method="average")
result
plot(result,hang=-1)
result2<-kmeans(mydia,3)
names(result2)
result2$cluster
mydia$cluster<-result2$cluster
head(mydia)
cor(mydia[,-5],method="pearson")
plot(mydia[,-5])
install.packages("mclust")
library(mclust)
install.packages("corrgram")
library(corrgram)
corrgram(mydia[,-5],upper.panel=panel.conf)
corrgram(mydia[,-5],lower.panel = panel.conf)
plot(mydia$carat,mydia$price,col=mydia$cluster)
points(result2$centers[,c("carat","price")],col=c(3,1,2),pch=8,cex=5)


data(AirPassengers)
ts.plot(AirPassengers)
diff<-diff(AirPassengers)
diff
plot(diff)
log<-diff(log(AirPassengers))
log
plot(log)
WWWusage
ts.plot(WWWusage,type="l",col="red")
EuStockMarkets
dim(EuStockMarkets)
Eustock <- data.frame(EuStockMarkets)
head(Eustock)
plot(Eustock)
plot(Eustock$DAX[1:1000],type="l",col='red')
plot.ts(cbind(Eustock$DAX[1:1000],Eustock$SMI[1:1000]),main="주가지수 추세선선")

data<-c(45,56,45,43,69,75,58,59,66,64,62,65,55,49,67,55,71,78,71,65,69,43,70,75,56,56,65,55,82,85,75,77,77,69,79,89)
length(data)
tsdata<-ts(data,start=c(2016,1),frequency=12)
tsdata
ts.plot(tsdata)
plot(stl(tsdata,"periodic"))

input<-c(3180,3000,3200,3100,3300,3200,3400,3550,3200,3400,3300,3700)
length(input)
tsdata<ts(input,start=c(2015,2),frequency = 12)
tsdata
acf(tsdata,col="red")
plot(tsdata,type="l")
plot(diff(tsdata))

data<-c(45,56,45,43,69,75,58,59,66,64,62,65,55,49,67,55,71,78,71,65,69,43,70,75,56,56,65,55,82,85,75,77,77,69,79,89)
length(data)
tsdata<-ts(data,start=c(2016,1),frequency=12)

install.packages("TTR")
library(TTR)
plot(tsdata)
plot(SMA(tsdata,n=1))
plot(SMA(tsdata,n=2))
plot(SMA(tsdata,n=3))
