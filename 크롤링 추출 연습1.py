

#아래의 예시와 같은 문자열에서 '/'로 구분되 각각의 옵션을 표시하고,
#특히 PZ 옵션의 값을 x,y,w,h로 구분하여 표기하세요.
#옵션의 순서는 변경 가능합니다.
#단, 최종 출력물은 다음과 같이 표기해 주세요
# PS=121
# PZ.x=2...
# PZ.h=100
# FILE=test.py

st0="/PS:121/PZ:2,3,100,100/FILE=c:\\test.py"
st1="/PZ:2,3,100,100/PS:121/FILE=c:\\test.py"
st2="/FILE=c:\\test.py/PS:121/PZ:2,3,100,100"

def get_PS(s):
    #print(s)          # /PS 옵션을 인수로 받아서 옵션의 값을 리턴 s:/PS:121
    x=s.split(':')    # x[0]='/PS' x[1]='121'
    return(x[1])

def get_PZ(s):        # /PZ 옵션을 인수로 받아서 옵션의 값을
    x=s.split(':')    #x,y,w,h f 리스트로 리턴,s=/PZ:2,3,100,100
    y=x[1].split(',') #y = ['2', '3', '100', '100']
    return(y)


def get_FILE(s) :     #/FILE 옵션을 인수로 받아서 옵션의 값을 리턴, 단, 구분자는 '='
    x=s.split('=')
    return(x[1])

#def Main() :          # 옵션 해석 프로그램 메인 루틴\
 #   s=st1.split('/')
  #  for s1 in s :          #리스트's'에 있는 각 항목 's/'
   #     if(s1[0:2] == 'PS'): #x=s[1] if(x[0:2] 를 한줄에 표현
    #        a=get_PS(s1)
     #       print(f"PS:{a}") #format 문자열

def getOptionValue(s,d): #/_xxx_(d)_vvv_옵션을 인수로 받아서 옵션의 값(val) 리턴
    #print(s)            #Camelcarot
    x=s.split(d)    
    return(x[1])    

def Main() :          
    s=st1.split('/')
    
    for s1 in s:
        if(s1[0:2] == 'PS'):
            #a=get_PS(s1)
            b=getOptionValue(s1,':')
            #print(f"  PS:{a}")
            print(f"  PS(1):{b}")
        elif(s1[0:2] =='PZ'):
            a=get_PZ(s1)
            print(f" PZ:{a}")
        elif(s1[0:4] == 'FILE'):
            a=getOptionValue(s1,'=')
            print(f"  FILE:{a}")





Main()
