
install.packages("stringr")
library(stringr)
str_extract("홍길동35이순신45유관순25","[1-9]{2}")

str_extract_all("홍길동35이순신45유관순25","[1-9]{2}")

str1 <- "1234홍길동" 
str1_sub <- str_sub(str1,5)
str1_sub
str1 <- str_replace(str1,"홍길동","김삿갓")
str1
str2



str_rep <- "홍길동,김삿갓,강감찬,이도령,이순신"
str_split(str_rep,",") #쉼표를 구분자로 처리해서 문자열 분리리리
str_c <- str_split(str_rep,",") # 저장
str_c
str_join <- paste(str_c, collapse = ",")
str_join
str_vec<-c("홍길동","김삿갓","감강찬","이도령","이순신")
str_join <- paste(str_vec, collapse=",")
num <- scan() #키보드로부터 읽기
name <- scan(what = character()) #문자열 입력력
name
sum(num)
num

df <- data.frame() # 공백 데이터프레임 생성
df <- edit(df) #편지기 실행해서 데이터 프레임 저장
