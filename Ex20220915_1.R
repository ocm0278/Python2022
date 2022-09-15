install.packages("reshape2")
library(reshape2)

data <- read.csv("C:/bigdataR/PartII/data.csv",header = T) #file.choose()
data
wide <-dcast(data,Customer_ID~Date,sum)
wide

setwd("C:/bigdataR/PartII")
write.csv(wide,"wide_.csv") # 행이름 저장됨
write.csv(wide,"wide__.csv",row.names = F) # 행이른 제거되어 저장
wide <- read.csv("wide__.csv")
wide

colnames(wide) # 열이름 출력
colnames(wide) <- c("Customer_ID","day1","day2","day3","day4","day5","day6","day7")
wide

long <- melt(wide, id="Customer_ID") # long format 으로 변경
long
colnames(long)
colnames(long) <- c("Customer_ID","Date","Buy")
long

smiths
long <- melt(smiths, id=1:2,)
long
wide <- dcast(long, subject+time~...)
wide

airquality # 뉴욕의 특정 기간 대기질 저장
help("airquality")

names(airquality) #열이름름
names(airquality)<-toupper(names(airquality))

air_melt <- melt(airquality, id=c("MONTH","DAY"),na.rm=TRUE)
air_melt
names(air_melt) #names(air_melt) <-tolower(names(air_melt))
acast<-acast(air_melt, day ~ month ~ variable)  # 행,열,면 순서로 작성
acast
acast2<-acast(air_melt,month~variable,mean,margins=F)
acast2



getwd()
dataset<- read.csv("dataset.cav",header=T)
dataset
print(dataset)
View(dataset)
head(dataset)
tail(dataset)

attributes(dataset)
str(dataset)
summary(dataset) #기술통계(최대,최소,개수,평균,합계,분산,표준편차 등)

dataset$age
dataset$resident
length(dataset$age)

x <- dataset$gender
x
y<- dataset$price
y

plot(dataset$price) # y축, x축은 인덱스로 설정됨됨
dataset[,"gender"]
dataset$gender
dataset[,2] #gender 열을 벡터로
names(dataset)
dataset[ ,c("job","price")]
dataset[,c(2,6)]
dataset[ ,c(2,4:6,3,1)]
dataset[c(2:4),]
dataset[-c(1:100),]

summary(dataset$price)
sum(dataset$price,na.rm=T) # NA 제거한 합계

price2 <- na.omit(dataset$price) # NA 제거한 데이터
sum(price2)

x<-dataset$price
x
dataset$price2 <- ifelse(!is.na(x),x,0) #NA가 아닐 경우 x, NA일 경우 0
names(dataset)
dataset$price2
dataset$price2[1:30]
dataset$price[1:30]

round(mean(x,na.rm=T),2) # 소수2째자리 반올림한 평균
dataset$price3 <- ifelse(!is.na(x),x,round(mean(x,na.rm=T),2))
dataset$price3[1:30]
dataset[c(1:30),c("price","price2","price3")]

table(dataset$gender)
pie(table(dataset$gender))

dataset <- subset(dataset, gender==1 | gender==2)
dataset
length(dataset$gender)


dataset<- read.csv("dataset.csv",header=T)
dataset$price
summary(dataset$price)

dataset2 <- subset(dataset , price >= 2 & price <=8)
dataset2
summary(dataset2$price)
length(dataset2$price)
stem(dataset2$price)

summary(dataset2$age)
dataset2 <- subset(dataset2, age >= 20 & age<= 69)
length(dataset2$age)

boxplot(dataset2$age, col = "red")

boxplot(dataset$price, col = "blue")

boxplot(dataset$price)$stats
dataset_sub <- subset(dataset, price >= 2.1 & price <= 7.9)
summary(dataset_sub$price)
dataset2

dataset2$resident2[dataset2$resident==1] <- '1.서울특벽시'
dataset2$resident2[dataset2$resident==2] <- '2.인천광역시'
dataset2$resident2[dataset2$resident==3] <- '3.대전광역시'
dataset2$resident2[dataset2$resident==4] <- '4.대구광역시'
dataset2$resident2[dataset2$resident==5] <- '5.시구군'

dataset2[,c("resident","resident2")]
dataset2$age2[dataset2$age <= 30] <- "청년층"
dataset2$age2[dataset2$age >= 30 & dataset2$age <=55] <- "중년층"
dataset2$age2[dataset2$age >55] <- "장년층"
head(dataset2)

survey <- dataset2$survey
survey
csurvey<- 6 -survey
csurvey
dataset2$survey<-csurvey
head(dataset2)

getwd()
new_data <- read.csv("new_data.csv", header = T,fileEncoding = "euc-kr")
head(new_data)
str(new_data)

resident_gender <- table(new_data$resident2,new_data$gender2)
gender_resident <- table(new_data$gender2,new_data$resident2)
barplot(resident_gender,beside=T,,horiz =T,col=rainbow(5),legend=row.names(resident_gender),main="성별에 따른 거주지역 분포 현황")
barplot(gender_resident,beside=T,col = rep(c(2,4),5),horiz= T, legend=c("남자","여자"),main = '거주지역별 성별 분포 현황')
install.packages("lattice")


library(lattice)

densityplot(~age,data=new_data,groups=job2,auto.key=T)




densityplot(~price | factor(gender2),data=new_data, groups = position2,auto.key =T, plot.points=F)



densityplot(~price | factor(position2),data=new_data, groups = gender2,auto.key =T,plot.points=F)

xyplot(age~ price  | factor(gender2),data = new_data)

setwd("C:/BigdataR/PartII")
user_data <- read.csv("user_data.csv",header =T,fileEncoding = "euc-kr")
head(user_data)
table(user_data$house_type)
length(user_data$house_type)
house_type2 <- ifelse(user_data$house_type==1 | user_data$house_type == 2,0,1) # 단독주택 , 다가구 : 0, 아파트, 오피스텔 : 1
house_type2[1:10]
user_data$house_type2<- house_type2
head(user_data)

pay_data <- read.csv("pay_data.csv",header = T,fileEncoding = "euc-kr")
head(pay_data,10)
table(pay_data$product_type)
product_price<- dcast(pay_data,user_id~product_type,sum,na.rm =T)
head(product_price)
