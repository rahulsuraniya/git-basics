"""
Exit Codes (Error Handling)
Every command return an exit code:

 0 --> Success
 1+ --> Failure

"""

# Check exit status:

#!/bin/bash

ls /wrongpath
echo $?
