
# create a simple program that determine the grade of all students in
# class
# A : 100 - 70
# B : 69 - 60
# C : 59 -  50
# D : 49 - 45
# E : 44 - 40
# F : 39 - 0

"""
Tasks:
using the grade above determine the grade of each student
to udpate the student profile.
"""

students_profile = [
    {"name": "john doe", "score": 46, "grade": ""},
    {"name": "bisi adele", "score": 59, "grade": ""},
    {"name": "clark kent", "score": 89, "grade": ""}
]

index = 0

while index <= len(students_profile) - 1:
    score = students_profile[index]["score"]

    if (score <= 100) and (score >= 70):
        grade="A"
    elif (score <= 69) and (score >= 60):
        grade="B"
    elif (score <= 59) and (score >= 50):
        grade="C"
    elif (score <= 49) and (score >= 45):
        grade="D"
    elif (score <= 44) and (score >= 40):
        grade="E"
    elif (score <= 39) and (score >= 0):
        grade="F"
    else:
        print("Invalid Score")

    students_profile[index]["grade"] = grade

    index = index + 1


print(students_profile)