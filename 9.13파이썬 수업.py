
#x= input('입력하세요 :')
#while True:
  #  if x=='int':
   #     print(x)



#키보드에서 문자열을 입력받아 숫자로 변환하는 프로그램
#단, 변환 오류시 경고 메시지를 출력하고 다시 입력


while True :
    s= input('숫자를 입력하세요 :')
    try :
        
        i=int(s)
        print(i)
    except :
        try:
            j=float(s)
            print(j)
        except:
            print('똑바로 입력하세요.')
    if s ==int(i):
        break

