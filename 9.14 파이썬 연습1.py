f = open("8.25 주급 초과 계산기.txt") # file 'text7.txt를 읽기 전용모드로 open. 단, text mode.
i=1
for ln in f :        #f를 문자열 리스트처럼 사용하여 한 라인씩 Read
    print(f"{i} :{ln}",end='')   # 읽어온 한 라인를 문자 단위를 하나씩 출력하세요.
    i=i+1                    #print(f"{'%02x'ln[0]}")           # 단, 16진수로 표기하세요."%02x"%c

i=1
ln=f.read()
f1=ln.split('\n')

for x in f1:
    #if i<10 :
    print(f"{'%2d'%i} : {x}")
    i=i+1
    #else :
     #   print(f"{i} : {x}")
      #  i=i+1

#c=ord(x[0])
#print(f"{'%02x'%c}")
    
     
