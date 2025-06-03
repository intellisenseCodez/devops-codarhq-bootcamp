
# Loop

# Guess Game
import random

comp_value = random.randint(1, 5)
attempt = 1
trial = 3

while attempt <= trial:
    print(f"Attempt: {attempt}")
    user_value = eval(input("Guess the number (1 - 10): "))

    if user_value == comp_value:
        print("Wow, You Win")
        break
    else:
        print("Oops! You Loose")

    # increment the attempt by 1
    attempt = attempt + 1


