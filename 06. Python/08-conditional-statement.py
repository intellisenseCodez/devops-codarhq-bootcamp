
# conditional statement: if, elif and else

# Determine the age category of a person with certain age
"""
Age 0 - 15: Child
15 - 20: Teen
21 - 30: Adult
31 - above: Old
"""

age = eval(input("Enter your age: "))

if age >= 0 and age <= 15:
    print("Child")
elif age >= 16 and age <= 20:
    print("Teen")
elif age >= 21 and age <= 30:
    print("Adult")
elif age >= 31:
    print("Old")
else:
    print("Invalid Input")


print("The age of the person is ", age)
