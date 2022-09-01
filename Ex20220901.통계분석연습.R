# 인구이동 데이터를 다운로드하여 시,군 데이터에 대하여  전입이 전출보다 많은 경우 추출하여 csv 파일로 저장

pop = read.csv(file.choose(),header=T,fileEncoding = "euc-kr")
head(pop)
tail(pop)

x<- grep("시$",pop$행정구역.시군구.별) #모든시 추출(행번호)

x
print(x)
cat(x)


data1 <- pop[x,]
head(data1,n=15)  
tail(data1)

x<- grep("자치시$",data1$행정구역.시군구.별) # 이미 추출한 데이터프레임(시) 중에서 위치 (행번호) 조회

X
data1<- data1[-c(9),] #중복된 행을 제외한 모든 행을 저장장

x <- grep("군$",pop$행정구역.시군구.별) #군 조회회
x
length(x)
dim(data1) #행과열 개수

data2<- pop[x  ,  ]
dim(data2)
head(data2)

data3 <-rbind(data1,data2)
head(data3)
tail(data3)
dim(data3)

data4 <- data3[data3$순이동.명.>0 , ] #전입이 전출보다 큰 경우
dim(data4)
head(data4,n=15)

write.csv(data4,"C:/bigdataR/pop4.csv",row.names=F,fileEncoding = "euc-kr") #엑셀에서 사용할 경우
head(data4)
name<-c(names(data4))
name

for(n in name){
  print(n)
}

