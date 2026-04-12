# Real DevOps Automation Script (Mini Project)

# Use case:
 # Update system
 # Install tools
 # Check service status

#!/bin/bash
set -e

install_pkg() {
	echo "Installing $1"
	sudo apt install -y $1
}

echo "updating system"
sudo apt update

install_pkg git
install_pkg nginx

echo "Checking nginx status"
systemctl status nginx


# This is industry-style scripting.
