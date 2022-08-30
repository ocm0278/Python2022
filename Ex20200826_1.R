df
df<- data.frame(x=c(1:5),y=seq(2, 10, 2),z=c('a','b','c','d','e'))
df
df$x
df$y
df$z
str(df) #데이터 타입
summary(df) # 기술통계계
df[c(2:3)   , 1  ] # 행또는 열 정보 생략시 전체를 의미
apply(df[,c(1,2)], 2,sum) # 열단위(2) 합계계
df 
df[ 1,1 ]
x1 <- subset(df,x >=3) # df 에서 x열이 3보다 큰 데이터를 x1 에 저장
x1

y1 <- subset(df, y <= 8)
yy1
y1
xyand <- subset(df, (x >=2) & (y <= 6))
xyand
xyor <- subset(df,(x>=2)|(y <=6))  #논리or
xyor

sid = c("A","B","C","D")
score = c(90,80,70,60)
subject = c("컴퓨터","국어국문","소프트웨어","유아교육육")
sid
score
subject
student <- data.frame(sid,score,subject)
student
class(student)
str(student)
str(student$sid) #sid열의 구조
str(student$subject)
height <- data.frame(id=c(1,2), h=c(180,175))
weight <- data.frame(id=c(1,2), w=c(80,75))
user <- merge(height, weight, by.x="id",by.y="id")
user

member <- list(name=c("홍길동","유관순"),age=c(35,25),
               address=c("한양" ,"충남"),gender=c("남자","여자"),
               htype=c("아파트","오피스텔"))
member               
class(member)
member$name
member$name[1]
member$age[1] <- 45#수정
member$id <- "hong" # 추가
member$pwd <- "1234"
member
member$age <- NULL
member
