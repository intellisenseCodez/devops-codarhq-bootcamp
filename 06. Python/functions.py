
# Paradigm
"""
1 - procedural programming (step by step)
2 - Functional Programming (DRY)
3 - Object Oriented Programming
"""

# Functions: 
# built-in: print(), len(), type(), input()
# custom: user-define
# Methods: .append(), .lower(), .upper(), .pop()

# Arguements:
# - positional arguement
# - keyword arguement
# - *args
# - *kwargs

# define a function
def add_num(num1, num2):
    result = num1 + num2
    print(result)

def greet(name="user"):
    print(f"How are you doing, {name}")


# invoke a function
# user_name = input("ENTER USERNAME: ")
# greet(name=user_name)

# add_num(num1=12, num2=2)

greet()
greet(name="ola")
greet(name="dayo")