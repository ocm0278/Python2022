library(nnet)
data<-read.csv(file.choose(),header = T,fileEncoding = "euc-kr")
head(data)
str(data)
data$종가<-as.numeric(data$종가) #숫자형 형변환환
df<-data.frame(일자=data$일자,종가=data$종가)
head(df)
str(df)
df<-df[order(df$일자)] ,] #일자 기준 오름차순 정렬
head(df)
n<-nrow(df) #행 갯수 저장장
n
rownames(df)
head(df)

Pnorm <- ( (df$종가 - min(df$종가)) / (max(df$종가)-min(df$종가)) )*0.9 + 0.05
Pnorm
head(df)

df<- cbind(df,종가norm=Pnorm) # 열 병합합
head(df)

n80 <- round(n*0.8,0) # 80% 마지막 인덱스스
n80
df.learning<-df[1:n80,] #학습데이터셋
df.learning
df.test <- df[(n80+1):n,] # 테스트데이터셋셋
df.test

#RUN model 생성성
INPUT_NODES<-10 #입력레이어
HIDDEN_NODES <-10 #히든레이어(은닉레이어)
OUTPUT_NODES<-5 #출력레이어
ITERATION <- 100 #학습 회수수

#데이터셋 재구성 함수
#from - to : 인덱스(예 : df$증가norm,1,92,10),(df.test$증가norm,11,97,5)
getDataSet <- function(item,from,to,size) {
  dataframe<-NULL 
  to<- to -size + 1 
  for(i in from :to) {
    start <- i 
    end <-start + size -1
    temp <- item[c(start:end)]
    dataframe<-rbind(dataframe,t(temp))
  } # 행단위 데이터 배열
  return(dataframe)
}
test01 <- getDataSet(df.learning$종가norm,1,10,INPUT_NODES)
test01
in_learning <- getDataSet(df.learning$종가norm,1,92,INPUT_NODES)
head(in_learning)
tail(in_learning)
out_learning <-getDataSet(df.learning$종가norm,11,97,OUTPUT_NODES)
head(out_learning)
tail(out_learning)

#신경망 구성
model<-nnet(in_learning,out_learning,size = HIDDEN_NODES,maxllt=100)

#테스트 데이터 셋
in_test <- getDataSet(df.test$종가norm,1,19,INPUT_NODES)#테스트 입력 데이터셋셋
head(in_test)

#생성된 신경망에 테스트데이터를 입력해서 예측값 추출
predicted_values <- predict(model,in_test,type="raw")
predicted_values

#데이터 복원해서 비교
Vpredicted <- (predicted_values - 0.05) / 0.9 * (max(df$종가)-min(df$종가)) +min(df$종가)
Vpredicted                                                                          

df.test   
Vreal<-getDataSet(df.test$종가,11,24,OUTPUT_NODES) #역변환 필요 없음음
Vreal

#MAPE(절대값을 비교하지 않고 백분율로 환산해서 비교)
ERROR<-abs(Vreal-Vpredicted)
ERROR
MAPE <- rowMeans(ERROR/Vreal) * 100 # 백분율로 환산산
MAPE #개별 행단위 평가
mean(MAPE)
