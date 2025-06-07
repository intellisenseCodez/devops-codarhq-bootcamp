from typing import List, Dict, Optional


StudentProfile = Dict[str, any]        # student profile
StudentDatabase = List[StudentProfile] # student database

# Initialize the student database
student_database: StudentDatabase = []

def generate_id(db: StudentDatabase) -> int:
    """Generate a new unique ID for a student.
    
    Args:
        db: The student database to generate ID for
        
    Returns:
        int: The next available ID number
    """
    return len(db) + 1


def add_user(name: str, age: int, gender: str) -> StudentProfile:
    """Add a new student to the database.
    
    Args:
        name: Student's name
        age: Student's age (must be positive)
        gender: Student's gender
        
    Returns:
        The created student profile
        
    Raises:
        ValueError: If age is not positive
    """
    if age <= 0:
        raise ValueError("Age must be a positive number")
    
    profile = {
        "user_id": generate_id(student_database),
        "name": name.strip(),
        "age": age,
        "gender": gender.strip()
    }
    return profile

def find_user(user_id: int) -> Optional[StudentProfile]:
    """Find a student by their ID.
    
    Args:
        user_id: The ID to search for
        
    Returns:
        The student profile if found, None otherwise
    """
    for profile in student_database:
        if profile["user_id"] == user_id:
            return profile
    return None

def update_user(user_id: int) -> bool:
    """Update a student's information.
    
    Args:
        user_id: The ID of the student to update
        
    Returns:
        bool: True if update was successful, False otherwise
    """
    profile = find_user(user_id)
    if not profile:
        print(f"Error: User with ID {user_id} not found")
        return False
    
    try:
        profile["name"] = input("Enter new name: ").strip()
        profile["age"] = int(input("Enter new age: "))
        profile["gender"] = input("Enter new gender: ").strip()
        return True
    except ValueError as e:
        print(f"Invalid input: {e}")
        return False

def delete_user(user_id: int) -> bool:
    """Remove a student from the database.
    
    Args:
        user_id: The ID of the student to remove
        
    Returns:
        bool: True if deletion was successful, False otherwise
    """
    profile = find_user(user_id)
    if profile:
        student_database.remove(profile)
        return True
    print(f"Error: User with ID {user_id} not found")
    return False

def view_users() -> StudentDatabase:
    """Get all student profiles.
    
    Returns:
        A list of all student profiles (copied to prevent modification)
    """
    return student_database.copy()

