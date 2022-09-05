st0="/PS:121 /PZ:2,3,100,100 /FILE=c:\\test.py"
st1="/PZ:2,3,100,100 /PS:121 /FILE=c:\\test.py"
st2="/FILE=c:\\test.py /PS:121 /PZ:2,3,100,100"

def get_PS(s):
   # print(s)          
    x=s.split(':')   
    return(x[1])


def get_PZ(s):       
    x=s.split(':')    
    y=x[1].split(',')
    print(type(x))
    return(y)


def get_FILE(s) :     
    x=s.split('=')
    return(x[1])

def getOptionvalue(s,d):
   # print(s)          
    x=s.split(':')   
    return(x[1])

def Main() :          
    s=st1.split('/')
    
    for s1 in s:
        if(s1[0:2] == 'PS'):
            a=get_PS(s1)
            print(f"  PS:{a}")
        elif(s1[0:2] =='PZ'):
            a=get_PZ(s1)
            print(f" PZ:{a}")
        elif(s1[0:4] == 'FILE'):
            a=get_FILE(s1)
            print(f"  FILE:{a}")
Main()
