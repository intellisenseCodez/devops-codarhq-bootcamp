from students.controller import add_user, update_user, delete_user, view_users
from students.controller import student_database


def display_menu() -> None:
    """Display the main menu options."""
    print("\nWelcome to CodarNet Student Management Portal")
    print("Please select an option:")
    print("1. Add New User")
    print("2. Update User")
    print("3. Delete User")
    print("4. View all users")
    print("5. Exit App")

def get_user_input() -> tuple:
    """Get user input for creating a new student."""
    name = input("Enter student name: ").strip()  # remove trialling whitespaces during inputs
    while True:
        try:
            age = int(input("Enter student age: "))
            if age <= 0:
                raise ValueError("Age must be positive")
            break
        except ValueError as e:
            print(f"Invalid age: {e}. Please enter a valid positive integer.")
    
    gender = input("Enter student gender: ").strip()
    return name, age, gender

def handle_add_user() -> None:
    """Handle the add user operation."""
    try:
        name, age, gender = get_user_input()
        new_user = add_user(name=name, age=age, gender=gender)
        student_database.append(new_user)
        print("User added successfully")
    except Exception as e:
        print(f"Error adding user: {e}")

def handle_update_user() -> None:
    """Handle the update user operation."""
    try:
        user_id = int(input("Enter user ID to update: "))
        update_user(user_id=user_id)
        print("User updated successfully")
    except ValueError:
        print("Invalid user ID. Please enter a valid number.")
    except Exception as e:
        print(f"Error updating user: {e}")


def handle_delete_user() -> None:
    """Handle the delete user operation."""
    try:
        user_id = int(input("Enter user ID to delete: "))
        delete_user(user_id=user_id)
        print("User deleted successfully")
    except ValueError:
        print("Invalid user ID. Please enter a valid number.")
    except Exception as e:
        print(f"Error deleting user: {e}")

def handle_view_users() -> None:
    """Handle the view users operation."""
    try:
        users = view_users()
        if not users:
            print("No users found.")
        else:
            for user in users:
                print(user)
    except Exception as e:
        print(f"Error viewing users: {e}")

def main() -> None:
    """Main application entry point."""
    while True:
        display_menu()
        choice = input("Enter your choice (1-5): ").strip()
        
        if choice == "1":
            handle_add_user()
        elif choice == "2":
            handle_update_user()
        elif choice == "3":
            handle_delete_user()
        elif choice == "4":
            handle_view_users()
        elif choice == "5":
            print("Thank you for using EazyNet Student Management. Goodbye!")
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 5.")

if __name__ == "__main__":
    main()