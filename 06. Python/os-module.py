import os

# current_path = os.getcwd()  # pwd
# print(f"Current Directory: {current_path}")

# python_path = current_path
# linux_path = os.chdir("/Users/ola/Desktop/codar/DEVOPS CLASS/linux-class")
# linux_path = os.getcwd()  # cd

# print(f"Linux Directory: {linux_path}")

# # List all directory
# linux_dir = os.listdir(linux_path)   # ls -a
# print(linux_dir)

# create a new directory
# new_folder = os.path.join(python_path, "dummy")  # /Users/ola/Desktop/codar/DEVOPS CLASS/linux-class/dummy

# os.mkdir(new_folder)

# os.rmdir(new_folder) 
# rename_path = os.path.join(python_path, "dummy2")

# os.rename(new_folder,rename_path)  # mv

# NEW_DIR = os.path.join(python_path,"users")
# USER_FILE = os.path.join(NEW_DIR, "students.csv")

# if os.path.exists(NEW_DIR):
#     print("The folder already exists")
# else:
#     os.mkdir(NEW_DIR)
#     os.mkdir(USER_FILE)
#     print("Directory Created successfully")


# print(os.environ["HOME"])  # env printenv
# print(os.environ["USER"])

# process

if os.system("ls") > 0:
    print("The command is invalid")
else:
    print("Command successfully")
