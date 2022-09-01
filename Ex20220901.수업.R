num1<-100
num2<-20

result<-num1/num2
result
result <- num1%%num2
result
result <- num1^2
result

== :EQ
!= :NE
> : GT
< : LT
>= : GE
<= :LE

x<-50 
y <-4
z<- x*y
if (x*y>=40){cat ("x*y의 결과는 40이상입니다.\n")
    cat("x*y=", z,"\n")
  
}else{
  cat("x*y의 결과는 40미만입니다.x*y=",z,"\n")
}
score <- scan()
result <- "노력" #일단 80 미만으로 가정정
if (score>= 80){result <-"우수"}
cat("학점은",score,result)


ifelse(score>= 80  ,  "우수"  ,  "노력")

switch("name",id="hong" ,name="홍길동"   ) #값을 조회해서 존재할 경우 저장된 내용 출력력
switch("apple", apple="1000",banana="1500")


name<- c("kim","lee","choi","park")
which(name=="choi")
tot <- 0
i<-c(1:10)
for ( n in  i){
  tot <- tot+i
}
cat(tot) # 1~10 차례로 합계

score<- c(85,90,95)
name<-c("홍길동","이순신","강감찬")

i <- 1 # 인덱스
for ( s in score){# score 의 개수만큼 반복
  cat(name[i],'=>',s,"\n")}

for (i in c(100,200)){
  cat(i)
}
i<-0
while(i<10){
    i<- i +1
    cat(i,"")

}
f3<-function(x,y){#사용자 함수 정의
  add<-x+y
  return(add)}    
add
result<-f3(10,20) #함수 호출
result
quakes
class(quakes)
help(quakes)



head(quakes)
quakes$mag
summary(quakes$mag)
table(quakes$mag)


x<-quakes$mag # 지진강도를 벡터로 저장
x
var_sd<- function(x) {
  var<- sum((x-mean(x))^ 2) /(length(x)-1) #분산
  sd<- sqrt(var) #표준편차
  cat("분산:",var,"\n")
  cat("표준편차 :", sd,"\n")
}
var_sd(x) #호출
sd(x) #내장 표준편차 함수
data <- c(10,20,5,6,40,7,NA,6,3,NA,2,NA)
na<- function(x){
  print(x)
  print(mean(x,na.rm=T))
  
  n<- 1000
  rnrom(n,mean=0,sd=1) #표준정규분포에 의한 난수 1000개 발생
  
  data<-ifelse(!is.na(x),x,0) #결측치일 경우 0으로 치환
  print(data)
  print(mean(data))  # 0이 포함된 평균
  
  data2 <- ifelse(!is.na(x),x,round(mean(x, na.rm=T),2))
#결측치를 평균으로 치환
  print(data2)
  print(mean(data2))
}
na(data)

install.packages("RSADBE")
library(RSADBE)
data("Bug_Metrics_Software")
Bug_Metrics_Software[  ,  ,2]
dim(Bug_Metrics_Software)
help("Bug_Metrics_Software")


rowSums(Bug_Metrics_Software[,,1])  #출시전 버그 합계(SW별)
rowMeans(Bug_Metrics_Software[,,1])
colSums(Bug_Metrics_Software[,,1])
colMeans(Bug_Metrics_Software[,,1])



n<- 1000
x<-rnorm(n,mean=0,sd=1) #표준정규분포에 의한 난수 1000개 발생
hist(x)
y<- runif(n, min=0,max =10) # 균등분포 난수
hist(y)
rnorm(5,mean=0,sd=1)
set.seed(12345678) #seed는 임의의 정수 사용용
rnorm(5,mean=0,sd=1)
set.seed(12345678) #seed는 임의의 정수 사용용
runif(5,min=,max=10)

x <- matrix(1:9,nrow = 3, ncol = 3,byrow=T) #행우선선
x
y<-matrix(1:3,nrow=3) #3행 1열
y

x
t(x) #전체 행렬

cbind(x, 1:3) #x에 열추가
rbind(x,10:12) #x에 행추가

chart_data <- c(250,135,535,789,345,757,232,453)
names(chart_data) <- c("2018_1","2018_2","2018_3","2018_4",
                       "2019_1","2019_2","2019_3","2019_4")
chart_data
barplot(chart_data, ylim = c(0,1200),xlab = "분기",ylab = "매출액",col=rainbow(5),main ="분기별 매출현황")

barplot(chart_data,xlab = "분기",ylab = "매출액",col=rainbow(5),main ="분기별 매출현황",horiz = T,xlim = c(0,1000))

data(VADeaths)
VADeaths
dim(VADeaths)
str(VADeaths)


par(mfrow=c(1,2))
barplot(VADeaths,beside = T,col = rainbow(7)) #T & F
barplot(VADeaths,beside = F,col = rainbow(7))
legend(19,71,c("50-54","55-59","60-64","65-69","70-74"),cex = 0.8,fill=rainbow(5))
