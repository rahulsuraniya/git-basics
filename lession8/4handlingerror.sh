# Handling Errors in Scripts

#!/bin/bash

mkdir testdir

if [ $? -ne 0 ]; then
	echo "Failed to create directory"
	exit 1
else
	echo "Directory created successfully"
fi

# This is real DevOps defensive coding.
