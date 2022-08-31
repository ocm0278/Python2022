str='/PS:121/PZ:2,3,100,100/FILE=test.py'
def crawling(s):
    if s.find('/')==-1:
        return 'no'
    x=s.split('/')
    return x[2]
        
s=crawling(str)
print(str)
