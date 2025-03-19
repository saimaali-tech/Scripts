#!/bin/bash

# Function to check if the script is run as root
check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo "Please run this script as root or with sudo."
        exit 1
    fi
}

# Function to install packages
install_packages() {
    echo "Updating package list..."
    sudo apt update

    echo "Installing Git, Node.js, Nano, Wget, Curl, and Vim..."
    sudo apt install -y git nodejs npm nano wget curl vim

    echo "Installation completed successfully!"
}

# Main execution
check_root
install_packages
