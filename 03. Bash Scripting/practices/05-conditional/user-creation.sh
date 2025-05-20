#!/bin/bash

# User creation script with root check and password setup

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Use 'sudo' or log in as root." >&2
    exit 1
fi

username="testuser"
password="securepassword123"


# Check if user already exists
if id "$username" &>/dev/null; then
    echo "⚠️ User $username already exists."
    exit 1
fi

# Create the user with a home directory
useradd -m "$username"

# Check if user was created successfully
if [ $? -ne 0 ]; then
    echo "❌ Failed to create user $username."
    exit 1
else
    # Set the password for the user
    echo "$username:$password" | chpasswd

    # Check if password was set successfully
    if [ $? -ne 0 ]; then
        echo "❌ Failed to set password for $username."
        exit 1
    fi

fi

# If everything worked
echo "✅ User $username created successfully with password."