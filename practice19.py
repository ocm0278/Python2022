#출석번호가 1 2 3 4, 앞에 100을 붙이기로 함 -> 101, 102, 103, 104.
students = [1,2,3,4,5]
print(students)
students = [i+100 for i in students]
print(students)