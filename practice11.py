# cabinet={3:"유재석",100:"김태호"}
# print(cabinet[3])
# print(cabinet[100])

# print(cabinet.get(3))
# print(cabinet.get(5))
# print(cabinet.get(3,"사용가능"))
# print(3 in cabinet)
# print(5 in cabinet)
cabinet={"A-3":"유재석","B-100":"김태호"}
print(cabinet["A-3"])
print(cabinet["B-100"])
cabinet["A-3"]="김종국"
cabinet["C-20"]="조세호"
print(cabinet)
del cabinet["A-3"]
print(cabinet)
print(cabinet.keys())
print(cabinet.values())
print(cabinet.items())
#목욕탕 폐점
cabinet.clear()
print(cabinet)