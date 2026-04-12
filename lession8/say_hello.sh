# Lession8: Advanced shell scripting for DevOps
# in this lession you will learn: Function
# Script arguments
# Error handling
# exit codes
# A real DevOps-style automation script

"""
1. Functions in shell Script
why use functions?
 Avoid repeating code
 Make scripts clean and professional
 Used heavily in CI/CD scripts
"""

#!/bin/bash

say_hello() {
	echo "Hello Rahul"
	echo "Welcome to DevOps"
}

say_hello

#say_hello is called like a command.
