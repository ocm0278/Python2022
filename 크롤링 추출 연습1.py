str='/PS:121/PZ:2,3,100,100/FILE=c:\\test.py'
st1='/PZ:2,3,100,100/PS:121/FILE=c:\\test.py'
st2='/FILE=c:\\test.py/PS:121/PZ:2,3,100,100'

def get_PS(s):     # /PS 옵션을 인수로 받아서 옵션의 값을 리턴 s:/PS:121
    x=s.split(':') # x[0]='/PS' x[1]='121'
    return(x[1])

def get_PZ(s):     # /PZ 옵션을 인수로 받아서 옵션의 값을 x,y,w,h f 리스트로 리턴,s=/PZ:2,3,100,100
    x=s.split(':')
    y=x[1].split(',') #y = ['2', '3', '100', '100']
    return(y)
print(str)
