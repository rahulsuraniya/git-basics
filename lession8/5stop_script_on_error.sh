#!/bin/bash

set -e

echo "This will run"
false
echo "This will NOT run"

# set -e is widly used in CI/CD
# Exit the script immediately if any command returns a non-zero (error) status.
