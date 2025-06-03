
# Error Handing

try:
    num1 = eval(input("Enter a digit: "))
    num2 = eval(input("Enter a digit: "))

    result = num1 / num2

    print(f"The result is {result}")
except ZeroDivisionError:
    print("You cannot divide by zero")
except NameError:
    print("Invalid Input for digit")
except:
    print("An error just occurred")
finally:
    print("Just finish running")