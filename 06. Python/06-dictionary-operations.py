
# DICTIONARY
profile = {
    "first_name":"John",
    "last_name":"Doe",
    "age":15,
    "gender": "male",
    "hobbies": ["reading", "sleeping", "play"],
    "address": (14,"Ikeja","Lagos", "Nigeria"),
    "active": True
}


# print(len(profile))

# access the value using the key
# print("The gender is",profile["gender"])

# display the 2nd hobbies of the profile
# print(profile["hobbies"][1])

# delete the play hobby from the profile
# profile["hobbies"].remove("play")
# print(profile)

# change the active to False
# profile["active"] = False
# print(profile)

# methods 
# print(dir(dict))

# 'clear', 'copy', 'fromkeys', 'get', 'items', 'keys', 
# 'pop', 'popitem', 'setdefault', 'update', 'values'
# print(profile)

# profile_copy = profile.copy()

# print(profile["email"])

# print(profile.get("age", "Not Found"))

# print(profile.items())
# print(profile.keys())

profile.update({"email":"example@gmail.com", "phone":"123456888"})
print(profile)