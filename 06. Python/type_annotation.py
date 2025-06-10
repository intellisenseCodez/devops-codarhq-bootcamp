
# Type Annotation / Type Hinting
# Variable
# Funtion Parameters
# Return Values

# DocType

name = "ola"   # no hinting

gender:str = "male"  # hinting


def display_full_name(fname:str, lname:str) -> str:
    """
    Display full name:

    fname: first name
    lname: last name

    Return the concatenation of fname and lname
    """
    full_name = fname + " " + lname
    return full_name



def even(number: int) -> True:
    """
    Determine if a number is even or odd

    Auguement: number: int
    Return: True if even
    """
    if number > 0:
        if number % 2 == 0:
            return True
        else:
            return False
    else:
        raise ValueError
    


# create a python module call arithmetic.py, define functions to perform the following operations;
# 1. Add two numbers together
# 2. determine if a given value is ODD or EVEN
# 3. determine if a given value is a divisor of 5
    













