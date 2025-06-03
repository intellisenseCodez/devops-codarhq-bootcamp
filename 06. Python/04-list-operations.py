
# LIST
"""
- collection datatypes
- mutable
"""

fruits = ["apple", "pawpaw", "cachew"]

# print("The lenght of fruits is:",len(fruits))

# print("The length of the first fruit is:",len(fruits[0]))

# access the first 3 chars of the 2 fruits
# print("The 1st 3 chars of of the fruits:", fruits[1][0:3])

# 'append', 'clear', 'copy', 'count', 'extend', 
# 'index', 'insert', 'pop', 'remove', 'reverse', 'sort'

print(fruits)

# append
fruits.append("water melon")
fruits.append("water melon")
print("After Apend:", fruits)

# clear
# fruits.clear()
# print("After Clear:", fruits)

# count
no_of_melon = fruits.count("water melon")
print("The count of water melon:",no_of_melon)

# extend
new_fruits = ["guava", "pineapple", "cherry"]
fruits.extend(new_fruits)
print("After extend:", fruits)

# index
pos = fruits.index("guava")
print(pos)

# insert a new fruit to pos 5
fruits.insert(5, "mango")
print("After Insert:", fruits)

# pop
fruits.pop(5)
print("After Pop:", fruits)

# remove
fruits.remove("water melon")
print("After Pop:", fruits)

# reverse
fruits.reverse()
print("After Reverse:", fruits)

# sort
fruits.sort()
print("After Sort:", fruits)