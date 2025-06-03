
# for loop

students_profile = [
    {"name": "john doe", "score": 46, "grade": ""},
    {"name": "bisi adele", "score": 59, "grade": ""},
    {"name": "clark kent", "score": 89, "grade": ""}
]


for user in students_profile:
    score = user["score"]

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

    user["grade"] = grade

print(students_profile)