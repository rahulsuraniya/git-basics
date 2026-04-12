# Assignment 8 very importand-mini project

# Task:
# create a Script devops_setup.sh

# Script requirements:
# 1 Print start message
# Updates system
# 3 installs git & nginx
# 4 checks nginx status
# 5 Prints success message

#!/bin/bash
set -e

echo "Starting Devops setup"

sudo apt update
sudo apt install -y git nginx

systemctl status nginx

echo "DevOps environment ready"

# Run it and verify output
