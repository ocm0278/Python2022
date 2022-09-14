f = open("8.25 주급 초과 계산기.txt")
#buf = f.read()
#b=buf.split('\n')
i=1
for ln in f :
    print(f"{'%2d'%i}:{ln}\n",end="")
    i=i+1

    for c in ln :
        c1=ord(c)
        print(f"{'%3x'%c1}",end="")
    print()
