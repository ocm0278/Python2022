Python 3.10.6 (tags/v3.10.6:9c7b4bd, Aug  1 2022, 21:53:49) [MSC v.1932 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.



print(type(1))
<class 'int'>
x = 2
x= x + 5
print(x)
7
print(1+2-3*4)
-9
print(1+2-3*4/5)
0.6000000000000001

x = 4**3
print(x)
64
print(4*4*4)
64
y = 3
print(y%2)
1
print (7%3)
1

x=1+2**3/4*5
print(x)
11.0
x= 1+((2**3)/4)*5
print(x)
11.0
x=55%4
print(x)
3
print(55/4)
13.75

x= 1+4%5*7/4
print(x)
8.0
print(x)
8.0

x=1+((4%5)*7)/4
print(x)
8.0

x=1+2**3/4*5
print(x)
11.0

x= 2*2*(2/2)
print(x)
4.0
x=3+3%3 3
SyntaxError: invalid syntax
print(3%3)
0
x=3*3%3
print(x)
0
x=(3*3)%3
print(x)
0
x=3*3-3
print(x)
6
x=3**3
print(x)
27
x=(3+3)&3
print(x)
2
x=(3+3)/3
print(x)
2.0
x=(3+3)%3
print
<built-in function print>
(x
)
SyntaxError: unmatched ')'
print(X)
Traceback (most recent call last):
  File "<pyshell#54>", line 1, in <module>
    print(X)
NameError: name 'X' is not defined. Did you mean: 'x'?
print(x)
0
x=(3**3+3)%
SyntaxError: invalid syntax
x=(3**3+3)%3
print(x)
0
x=(3**3-3)%3
print(x)
0
print(x)
0
x=(3+3*3)+3
print(x)
15
x=(3-3*3)+3
print(x)
-3
x=(3+3-3)*3
print(x)
9
x=(3&3-3)+3
print(x)
3
x=(3%3-3)+3
print(x)
0
x=((3%3)-3)+3
rpitn(x)
Traceback (most recent call last):
  File "<pyshell#73>", line 1, in <module>
    rpitn(x)
NameError: name 'rpitn' is not defined
print(x)
0
x=(4-4/4)+4
print(x)
7.0
x=((4-4)/4)+4
print(x)
4.0
x=5 5 (5/5)
SyntaxError: invalid syntax
x=3*3/3
print(x)
3.0
x=(3**3/3)
print(x)
9.0
x=(3**3-3)
print(x)
24
print(3/3%3)
1.0
x=(3/3%3)+3
print(x)
4.0
print(5/5%5)
1.0
print(5-(5/5%5))
4.0
4.0print(5-(5/5%5))
print(7/7%7))
SyntaxError: invalid decimal literal
print(7/7%7)
1.0
print(6/6%6)
1.0
print(6*6%6)
0
print(6**6-6)/6
46650
Traceback (most recent call last):
  File "<pyshell#95>", line 1, in <module>
    print(6**6-6)/6
TypeError: unsupported operand type(s) for /: 'NoneType' and 'int'
print((6+6)%6)
0
print(6//6
      )
1
print(1%6)
1
print(6/6%6)
1.0
print((6**6)%6)
0
6+6+6
18
18/6
3.0
6*6-6
30
6+6
12
12/6
2.0
print(6-((6+6)/6))
4.0
8+8
16
8*8
64
64%8
0
8**8
16777216
8+8
16
16%8
0
8*8
64
64-8
56
56/8
7.0
56%8
0
8**8
16777216
8+*
SyntaxError: invalid syntax
8+8
16
16/8
2.0
print((8+8)/8))
SyntaxError: unmatched ')'
8/((8+8)/8))
SyntaxError: unmatched ')'
8
8
(((8/(8+8)/8)))
0.0625
(((8/((8+8)/8)))
(8/((8+8)/8)))
Traceback (most recent call last):
  File "<pyshell#130>", line 1, in <module>
    (((8/((8+8)/8)))
TypeError: 'float' object is not callable
(8/((8+8)/8)))
    
SyntaxError: unmatched ')'
(8/((8+8)/8))
4.0

print(8/((8+8)/8))
4.0
7+7%7
7
7-7%7
7
7%7
0
(7+7)*7
98
98%7
0
98/7
14.0
7*7
49
49-7
42
42/7
6.0
14%7
0
7**7
823543
7**7
823543
7**7-7
823536
823536%7
0
823536/7
117648.0
7*7
49
7++7
14
7%7-7
-7
7**7/7
117649.0
7**7/7%
SyntaxError: invalid syntax
7**7/7%7
0.0
7*7-7-7
35
7*7
49
(7-(7/7%7))
6.0
76.0
76.0
77/7
11.0
999/9
111.0
999%9
0
99+9
108
108%
SyntaxError: invalid syntax
108%9
0
108/9
12.0
99-9
90
90%9
0
90/9
10.0

print(float(99)+100_
      
SyntaxError: invalid decimal literal
print(float(99)+100)
      
199.0
i=42
      
type(i)
      
<class 'int'>
f=float(i)
      
print(f)
      
42.0
type(f)
      
<class 'float'>
sval='123'
      
type(sval)
      
<class 'str'>






print('hello')
      
hello
s=1'hello'
      
SyntaxError: invalid syntax
s1='hello'
      
s2='안녕하세요'
      
s3=input('이름:')
      
이름:홍길동
print(s1,s3)
      
hello 홍길동
print(type(s3))
      
<class 'str'>
s4=input('전화번호:')
      
전화번호:123-4567
s5=input('나이:")
         
SyntaxError: unterminated string literal (detected at line 1)
s5=input('나이:')
         
나이:27
print(s1,s2,s3,s4,s5)
         
hello 안녕하세요 홍길동 123-4567 27
print(s3'의 나이는',s5)
         
SyntaxError: invalid syntax
print(s3,'의 나이는',s5)
         
홍길동 의 나이는 27
print(s3,'의 나이는',int(s5)+1)
         
홍길동 의 나이는 28
print(s3,'의 나이는',float(s5)+1)
         
홍길동 의 나이는 28.0

================ RESTART: C:/Users/user3/Documents/study/test.py ===============
hello

================ RESTART: C:/Users/user3/Documents/study/test.py ===============
hello
홍길동
홍길동
         
Traceback (most recent call last):
  File "<pyshell#203>", line 1, in <module>
    홍길동
NameError: name '홍길동' is not defined
35*2.75
         
96.25

================ RESTART: C:/Users/user3/Documents/study/test.py ===============
hello
홍길동
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test.py", line 4, in <module>
    s1=intput('Enter Hours :')
NameError: name 'intput' is not defined. Did you mean: 'input'?

================ RESTART: C:/Users/user3/Documents/study/test.py ===============
hello
홍길동
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test.py", line 4, in <module>
    s1=intput('일한시간은 :')
NameError: name 'intput' is not defined. Did you mean: 'input'?

================ RESTART: C:/Users/user3/Documents/study/test.py ===============
hello
홍길동
일한시간은 :
================ RESTART: C:/Users/user3/Documents/study/test.py ===============
일한시간은 :
================ RESTART: C:/Users/user3/Documents/study/test.py ===============
일한시간은 :
================ RESTART: C:/Users/user3/Documents/study/test.py ===============
일한시간은 :
================ RESTART: C:/Users/user3/Documents/study/test.py ===============
일한시간은 :
평균 시급:
         일한시간은 :
s1=input('일한시간은 :')
         
일한시간은 :


================ RESTART: C:/Users/user3/Documents/study/test.py ===============
일한시간은 :35
평균 시급:2.75
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test.py", line 4, in <module>
    print(int(s1)*int(s2))
ValueError: invalid literal for int() with base 10: '2.75'

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
일한시간은 :35
평균 시급:2.75
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test2.py", line 4, in <module>
    print(int(s1)*int(s2))
ValueError: invalid literal for int() with base 10: '2.75'

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
일한시간은 :35
평균 시급:2.75
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test2.py", line 4, in <module>
    print(int('s1')*int('s2'))
ValueError: invalid literal for int() with base 10: 's1'

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
시간:35
시급:2.75
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test2.py", line 4, in <module>
    print(s1*s2)
TypeError: can't multiply sequence by non-int of type 'str'

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
시간:35
시급:2.75
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test2.py", line 4, in <module>
    print(int(s1)*int(s2))
ValueError: invalid literal for int() with base 10: '2.75'

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
시간:35
시급:2.75
96.25

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
시간:35
시급:2.75
96.25
한달 일한 일수:25
하루 일한 시간:9
시급:2.75
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test2.py", line 13, in <module>
    print(int(s1)*int(s2)*float(s3))
ValueError: invalid literal for int() with base 10: '2.75'

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
시간:35
시급:2.75
96.25
한달 일한 일수:25
하루 일한 시간:9
시급:2.75
Traceback (most recent call last):
  File "C:/Users/user3/Documents/study/test2.py", line 13, in <module>
    print(int(s3)*int(s4)*float(s5))
NameError: name 's4' is not defined. Did you mean: 'S4'?

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
시간:35
시급:2.75
96.25
한달 일한 일수:25
하루 일한 시간:9
시급:2.75
618.75

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
한달 일한 일수:25
하루 일한 시간:9
시급:10000
2250000.0

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
한달 일한 일수:24.5
하루 일한 시간:8.5
시급:9870
2055427.5

=============== RESTART: C:/Users/user3/Documents/study/test2.py ===============
한달 일한 일수:24
하루 일한 평균 시간:7.5
시급:9870
1776600.0

============== RESTART: C:/Users/user3/Documents/study/월급 프로그램.py ==============
한달 일한 일수:24
하루 일한 평균 시간:7.5
시급:9870
야근 추가 시간:13
야간 시급:9870
1969065.0
13*9870
         
128310
+1776600
         
1776600
1776600+128310
         
1904910

============== RESTART: C:/Users/user3/Documents/study/월급 프로그램.py ==============
한달 일한 일수:24
하루 일한 평균 시간:7.5
시급:9870
야근 추가 시간:13
시급:9870
1969065.0
