# 사이트명을
url='https://sports.news.naver.com/news?oid=108&aid=0003083314'
#url='문자코드 value : 50 : 문자:[2]'
def crawling(s) :              #url을 문자열로 받아서 구문분석을 통해 Site 명을 추출하여 반환
    if s.find('://') == -1:    # 입력 문자열이 url 이 아니라면 'No Site' 반환
        return 'No Site'
    x=s.split('/')             #'/'를 구분자로 구문 분해
    #print(x)
    return x[2]

s1=crawling(url)
print(f'URL:{url}')
print(f'site 이름:{s1}')

#https 는 프로토콜 (통신용어) http의  p가 프로토콜 약자
#http:// ddos 공격으로 보안 인증으로 https:// 나타냄
#입력값 검사가 우
