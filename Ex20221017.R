product<- read.csv("C:/BigdataR/Part-IV/product.csv",header = TRUE,fileEncoding = "euc-kr")
str(product)
y=product$제품_만족도
x=product$제품_적절성
df<- data.frame(x,y)
result.lm<-lm(formula = y~x,data=df)
result.lm
names(result.lm)
fitted.values(result.lm)[1:2]
head(df,1)
Y=0.7789+0.7393*4
Y
3-3.735963
residuals(result.lm)[1:2]
plot(formula=y~x,data=product)
result.lm<-lm(formula = y~x,data=product)
abline(result.lm,col='red')
summary(result.lm)
y=product$제품_만족도
x1=product$제품_친밀도
x2=product$제품_적절성
df<-data.frame(x1,x2,y)
result.lm<-lm(formula = y~x1+x2,data=df)
result.lm
install.packages("car")
library(car)
vif(result.lm)
summary(result.lm)
data(iris)
model<-lm(formula = Sepal.Length~Sepal.Width + Petal.Length + Petal.Width,data=iris)
vif(model)
sqrt(vif(model))>2
cor(iris[,-5])
x<-sample(1:nrow(iris),0.7*nrow(iris))
x
train<-iris[x,]
test<-iris[-x,]
model<-lm(formula = Sepal.Length~Sepal.Width+Petal.Length,data=train)
model
summary(model)
vif(model)
head(train,1)
Y<-2

pred<-predict(model,test)
pred
col(pred,test$Sepal.Length)
formula=Sepal.Length~Sepal.Width+Petal.Length+Petal.Width
model<-lm(formula = formula,data=iris)
model

install.packages('lmtest')
library(lmtest)
dwtest(model)
# 독립성의 경우 p-value가 0.05이상 귀무가설 채택(독립성과 차이가 없다.)
#잔차와 적합값의 분포 비교(분산이 일정, 적합값의 크기에 따라 잔차가 변화없어야 함)

plot(model,which=2)

summary(model)

model
res<-residuals(model)
res
shapiro.test(res)
qqnorm(res)
vif(model)


weather=read.csv("C:/BigdataR/Part-IV/weather.csv",stringsAsFactors = F)
dim(weather)
head(weather)
weather_df<-weather[,c(-1,-6,-8,-14)]
str(weather_df)
weather_df$RainTomorrow[weather_df$RainTomorrow=='Yes']<-1
weather_df$RainTomorrow[weather_df$RainTomorrow=='No']<-0
weather_df$RainTomorrow<-as.numeric(weather_df$RainTomorrow)
head(weather_df)
idx<-sample(1:nrow(weather_df),nrow(weather_df)*0.7) #전체 개수 중에서 70% 를 비복ㅇ원 추출하여 인덱스 저장
train<-weather_df[idx,]
test<-weather_df[-idx,]
weather_model<-glm(RainTomorrow~.,data=train,family = 'binomial')
weather_model
summary(weather_model)


pred<-predict(weather_model,newdata = test,type = "response")
pred
result_pred<-ifelse(pred>=0.5,1,0)
result_pred
table(result_pred)
install.packages("ROCR")
library(ROCR)
pr<-prediction(pred,test$RainTomorrow)
prf<-performance(pr,measure="tpr",x.measure = "fpr")
plot(prf)
install.packages("party")
  
library(party)
install.packages("datasets")
library(datasets)
str(airquality)
formula<-Temp~Solar.R+Wind+Ozone
air_ctree<-ctree(formula,data=airquality)
air_ctree

plot(air_ctree)
idx<-sample(1:nrow(iris),nrow(iris)*0.7)
train<-iris[idx,]
test<-iris[-idx,]
formula<-Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width
iris_ctree<-ctree(formula,data=train)
iris_ctree
plot(iris_ctree,type="simple")
plot(iris_ctree)
pred<-predict(iris_ctree,test)
table(pred,test$Species)
(14+16+13)/nrow(test)
library(cvTools)
cross<-cvFolds(nrow(iris),K=3,R=2)
str(cross)

# iris를 활용하여 로지스틱 회귀분석
data(iris)
str(iris)

iris_df<-iris[ , -c(5)] #Spices 열을 수정하기 위해 제거된 새로운 데이터셋 생성성
head(iris_df)
iris_df$Spices[iris$Species=="setosa"]<-0 #setosa :0
iris_df$Spices[iris$Species=="versicolor"]<-1 #versicolor
head(iris)
tail(iris_df)

iris_df1<-iris_df[ c(1:100),]
summary(iris_df1)
tail(iris_df1)

iris_df$Spices
str(iris_df1)

idx<-sample(1:nrow(iris_df),nrow(iris_df)*0.7) #랜덤추출출
idx
train<-iris_df1[idx,] #훈련데이터셋셋
test<-iris_df1[-idx,]
iris_df1_model<-glm(Spices~.,data=iris_df1,family = "binomial")
