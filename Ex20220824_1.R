age <- 36
name <- "홍길동"
names <- c("홍길동", "이순신" , "유관순")

num1 <- 20 #scaler 값 저장장
str1 <- "홍길동"
bool1 <- TRUE
sum(10,20,30)
sum(10,20,30,NA)
sum(10,20,30,NA,na.rm = TRUE)
is.numeric(num1)
is.character(str1)
is.logical(bool1)

x <- c(1, 2, "3")
x
result <- x * 3 # 벡터와 scaler 의 곱 은 벡터
result <- as.numeric(x) * 3 # 문자를 숫자형으로 변환 후 곱셉셉셉
result
result <- as.integer(x)
mode(num1)
mode(result)
mode(str1)
mode(x)

class(x)
date1 <- as.Date("20/02/28","%y/%m/%d")
mode(date1)
class(date1)

today <- as.Date("2022-08-24 10:10:10,%Y-%m-%d %H:%M:%S")
class(date2)



args(max)
getwd()

