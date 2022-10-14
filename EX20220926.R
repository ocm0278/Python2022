library(httr)
library(XML)
library(stringr)
url<-"https://media.daum.net/"
help(GET)
web<-GET(url) #지정된 url 에 접속해서 html 형식의 소스코드를 반환(단순 텍스트)
web
html<-(htmlTreeParse)
html<-htmlTreeParse(web,useInternalNodes = T,trim=T,encoding="utf-8")
html
rootNote<-xmlRoot(html) #최상위 노드 찾기기
rootNote

news <- xpathSApply(rootNote,"//a[@class='link_txt']",xmlValue)#해당되는 모든 도드를 탐색 하여 벡터로 저장(문자열)
news


news_pre <- gsub('[\r\n\t]','',news)#특수문자를 찾아서 제거 후 저장장
news_pre

news_pre<-gsub('[[:punct:]]','',news_pre)#문장부호 제거거
news
news_pre<-gsub('[[:cntrl:]]','',news_pre)#특수문자 제거거
news_pre
news_pre <- str_trim(news_pre) # 문자열의 좌우측 공백 제거
news_pre

getwd()
setwd("C:/bigdataR")
write.csv(news_pre,"news_data.csv",quote=F,fileEncoding = "euc-kr") #큰따옴표 정장하지 않음
news_data <- read.csv ("news_data.csv",header=T, fileEncoding = "euc-kr")
str(news_data)
names(news_data)<-c("No","News_txt") #열 이름 변경경
news_data
write.csv(news_data,"news_final.csv",fileEncoding = "euc-kr",row.names = F)

#코로나19 사이트에서 뉴스&이슈에서 번호, 제목, 담당을 스크레이핑
#http://ncov.kdca.go.kr/
#covid.csv로 저장
#3개의 열을 각각 스크레이핑하여 저장

url<-"http://ncov.kdca.go.kr/tcmBoardList.do?brdId=&brdGubun=&dataGubun=&ncvContSeq=&contSeq=&board_id=140&gubun="
help(GET)
web<-GET(url) #지정된 url 에 접속해서 html 형식의 소스코드를 반환(단순 텍스트)
web
html<-(htmlTreeParse)
html<-htmlTreeParse(web,useInternalNodes = T,trim=T,encoding="utf-8")
html
rootNote<-xmlRoot(html) #최상위 노드 찾기기
rootNote
covidnum<-xpathSApply(rootNote,"//div[@class='board_list']//tbody/tr/td[1]",xmlValue)#해당되는 모든 도드를 탐색 하여 벡터로 저장(문자열)
covidSubject<- xpathApply(rootNote,"//a[@class='bl_list']",xmlValue)
covidPart<-xpathSApply(rootNote,"//div[@class='board_list']//tbody/tr/td[3]",xmlValue)
covidDate<-xpathSApply(rootNote,"//div[@class='board_list']//tbody/tr/td[4]",xmlValue)
covid
covidPart
covidnum<-gsub('\"','',covidnum)
covidnum
covid<-data.frame(번호=covidnum,제목=covidSubject,담당=covidPart)
covid
write.csv(covid,"covid.csv",row.names = F,fileEncoding = "euc-kr")

df<-data.frame(번호=NULL,담당=NULL,날짜=NULL)
for(i in c(1:10)) {
  url <-paste( "http://ncov.kdca.go.kr/tcmBoardList.do?pageIndex=",  i  ,"&brdId=&brdGubun=&board_id=140&search_item=1&search_content=",sep = "")
web<-GET(url) #지정된 url 에 접속해서 html 형식의 소스코드를 반환(단순 텍스트)
html<-htmlTreeParse(web,useInternalNodes = T,trim=T,encoding="utf-8")
rootNote<-xmlRoot(html) #최상위 노드 찾기기
covidnum<-xpathSApply(rootNote,"//div[@class='board_list']//tbody/tr/td[1]",xmlValue)
covidSubject<- xpathApply(rootNote,"//a[@class='bl_list']",xmlValue)
covidPart<-xpathSApply(rootNote,"//div[@class='board_list']//tbody/tr/td[3]",xmlValue)
covidDate<-xpathSApply(rootNote,"//div[@class='board_list']//tbody/tr/td[4]",xmlValue)

subdf <- data.frame(번호=covidnum,제목=covidSubject ,담당 =covidPart,날짜=covidDate)
df <- rbind(df,subdf)}

df

#옥션 웹크롤링
searchName<-URLencode(iconv("노트북","euc-kr","utf-8"))
searchName<-URLencode("노트북")
url<-paste("http://browse.auction.co.kr/search?keyword=",searchName,"&itemno=&nickname=&frm=hometab&dom=auction&isSuggestion=No&retry=&Fwk=",searchName,"&acode=SRP_SU_0100&arraycategory=&encKeyword=",searchName,"&v=l",sep="")
url
web<-GET(url)
web
html<-htmlTreeParse(web,useInternalNodes = T,trim=T,encoding="utf-8")
rootNote<-xmlRoot(html)
rootNote
productName<-xpathSApply(rootNote,"//span[@class='text--title']",xmlValue)
productName
productprice<-xpathSApply(rootNote,"//strong[@class='text--price_seller']",xmlValue)
productprice
productprice<-gsub(",","",productprice) #쉽표제거
df <- data.frame(품명=productName,단가=productprice)
df


install.packages("wordcloud")
library(wordcloud)
word <- c("서울","부산","대구")
freq<-c(300,230,150) #빈도수(정수)
wordcloud(word,freq,random.order=F,random.color = F,colors = rainbow(7))

#전입이 많은 지역을 wordcloud로 표현
data <- read.csv(file.choose(),header=T, fileEncoding = "euc-kr")
head(data)

x<- grep("시$",data$행정구역.시군구.별)
x
data1<- data[x , ]
data1
x<- grep("군$",data$행정구역.시군구.별)

x
data2<-data[x,]
data3<-rbind(data1,data2)
data4<- data3[data3$순이동.명.>0,]

word<-data4$행정구역.시군구.별
freq<-data4$순이동.명.
class(freq)  
wordcloud(word,freq,random.order = F,random.color = F,colors = rainbow(7))
df <-data.frame(지역=word,빈도수=freq)
View(df)
install.packages("wordcloud2")
library(wordcloud2)
wordcloud2(df)
