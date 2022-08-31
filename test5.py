def func6(*args):
    a=0
    for i in args:
        a=a+i
        return a

b=func6(1,2)
print(b)

c=func6(2,3,4,5)
print(c)

d=func6(1,2,3,4,5,4,3,2,1)
print(d)
e=func6()
print(e)
