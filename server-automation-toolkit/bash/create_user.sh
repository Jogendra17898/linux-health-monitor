#!/bin/bash
# Create a new user with password automatically

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run as root (sudo)"
  exit 1
fi

read -p "Enter new username: " USERNAME
read -s -p "Enter password for $USERNAME: " PASSWORD
echo

# Create user
useradd -m -s /bin/bash "$USERNAME"

# Set password
echo "$USERNAME:$PASSWORD" | chpasswd

echo "✅ User $USERNAME created successfully!"