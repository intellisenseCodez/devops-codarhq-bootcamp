from typing import List, Dict, Tuple, Set, Optional, Union
from type_annotation import even


def process_numbers(numbers:List[int]) -> List[bool]:
    number_bool = []
    for number in numbers:
        result = even(number)
        number_bool.append(result)
    return number_bool


def get_user(profile:Dict[str, any]) -> Dict[str, any]:
    return profile


def greet_user(name: Optional[str]=None) -> str:
     return f"Welcome, {name}"

def add_num(num1:Union[int | float], num2:Union[int | float]) -> Union[int | float]:
    if isinstance(num1, (int, float)) and isinstance(num2, (int, float)):
        return num1 + num2
    else:
        raise ValueError


