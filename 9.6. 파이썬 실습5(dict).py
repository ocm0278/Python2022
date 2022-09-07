#purse = dict()
#purse['money']=12
#purse['candy']=3
#purse['tissues']=75
#print(purse)

#print(purse['candy'])

#purse['candy']=purse['candy']+2
#print(purse)

#lst=list()
#lst.append(21)
#lst.append(183)
#print(lst)
#lst[0]=23
#print(lst)

#ddd=dict()
#ddd['age']=21
#ddd['course']=182
#print(ddd)

#ddd['age']=23
#print(ddd)

#jjj={'chuck':1,'fred':42, 'jan':100}
#print(jjj)

#counts=dict()
#names=['csev','cwen','csev','zqian','cwen']
#for name in names:
 #   counts[name]=counts.get(name,0)+1
#print(counts)
#==========================================================


sDict= {} #dict()
str1=["Writing programs (or programming) is a very creative and rewarding activity.",
"You can write programs for many reasons ranging from making your living to solving a difficult data analysis problem to having fun to helping someone else solve a problem.",
"This book assumes that everyone needs to know how to program and that once you know how to program, you will figure out what you want to do with your newfound skills.",
"We are surrounded in our daily lives with computers ranging from laptops to cell phones.",
"We can think of these computers as our “personal assistants” who can take care of many things on our behalf.",
"The hardware in our current-day computers is essentially built to continuously ask us the question, \“What would you like me to do next?\”",
"Our computers are fast and have vast amounts of memory and could be very helpful to us if we only knew the language to speak to explain to the computer what we would like it to do next.",
"If we knew this language we could tell the computer to do tasks on our behalf that were repetitive.",
"Interestingly, the kinds of things computers can do best are often the kinds of things that we humans find boring and mind-numbing."]
def MakeDict(sList): # 문자열 리스트 sLIst를 받아서 Dictionary를 구성하는 함수
                   #sList = ["길동", "길순", "길영", "길민","길순","길영"]
                   #sDict={"길동":1,"길순":2,"길영":2,"길민":1}

    for n in sList : # lst 변수를 n으로 사용하겠다
        sDict[n] = sDict.get(n,0)+1 #0을 deport 값이라고 한

def Main2():
    #str="Writing programs or programming is a very creative and rewarding activity"
    for s in str1 :
        s1=s.split(' ')
        MakeDict(s1)
    print(sDict)

def Main() :
    xFile=open('test17.txt')
    #print(xFile)
    for x in xFile : #택스트 파일에서 한줄씩 읽어 옴
        print(x)
        #x1=x.split('')
        #MakeDict(x1)
    #print(dDict)
    
Main()
