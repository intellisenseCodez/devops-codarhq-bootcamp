
# simple calculator. 

number1 = eval(input("Enter a number: "))
number2 = eval(input("Enter a number: "))
operation = input("Enter the operator (+, -, /, *): ")

if operation == "+":
    result = number1 + number2
    print(f"The result is {result}")
elif operation == "-":
    result = number1 - number2
    print(f"The result is {result}")
elif operation == "*":
    result = number1 * number2
    print(f"The result is {result}")
elif operation == "/":
    result = number1 / number2
    print(f"The result is {result}")
else:
    print("Invalid Operation")
