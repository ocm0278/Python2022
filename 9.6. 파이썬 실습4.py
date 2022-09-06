def test(st) : #st :list type
    m=min(st)
    n=max(st)
    return(m,n)

def Main():
    s=[1,7,3,9,5]
    (x,y)=test(s)
    print(f"Max = {y} Min={x}")


Main()
