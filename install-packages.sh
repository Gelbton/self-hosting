#!/bin/bash

# Update package lists
sudo apt update

# Install Docker
if ! command -v docker &> /dev/null; then
    echo "Installing Docker..."
    sudo apt install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
    echo "Docker installed successfully."
else
    echo "Docker is already installed."
fi

# Install Docker Compose
if ! command -v docker-compose &> /dev/null; then
    echo "Installing Docker Compose..."
    sudo apt install -y docker-compose
    echo "Docker Compose installed successfully."
else
    echo "Docker Compose is already installed."
fi

# Install Vim
if ! command -v vim &> /dev/null; then
    echo "Installing Vim..."
    sudo apt install -y vim
    echo "Vim installed successfully."
else
    echo "Vim is already installed."
fi

# Ensure Bash is available (should always be available in Ubuntu)
echo "Bash is available."

# Display installed versions (optional)
echo "Versions installed:"
docker --version
docker-compose --version
vim --version

