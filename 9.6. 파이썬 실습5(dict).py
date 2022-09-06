purse = dict()
purse['money']=12
purse['candy']=3
purse['tissues']=75
print(purse)

print(purse['candy'])

purse['candy']=purse['candy']+2
print(purse)

lst=list()
lst.append(21)
lst.append(183)
print(lst)
lst[0]=23
print(lst)

ddd=dict()
ddd['age']=21
ddd['course']=182
print(ddd)

ddd['age']=23
print(ddd)

jjj={'chuck':1,'fred':42, 'jan':100}
print(jjj)

counts=dict()
names=['csev','cwen','csev','zqian','cwen']
for name in names:
    counts[name]=counts.get(name,0)+1
print(counts)



ddd = {} #dict()
lst = ["길동", "길순", "길영", "길민","길순","길영"]
#dic={"길동":1,"길순":2,"길영":2,"길민":1}
for n in lst : # lst 변수를 n으로 사용하겠다
    ddd[n] = ddd.get(n,0)+1 #0을 deport 값이라고 한
print(ddd)






word1='Writing programs or programming is a very creative and rewarding activity'
+'You can write programs for many reasons ranging from making your living to solving a difficult data analysisproblem to having fun to helping someone else solve a problem'+'This book assumes that everyone needs to know how to program and that once you know how to program, you will figure out what you want to do with your newfound skills.'
x=word1.split()
print(x)


