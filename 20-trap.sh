#!/bin/bash

set -e # ERR, This will be checking for errors, if errors it will Exit

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hello World!"
echo "I am learning Shell Scripting"
echoo "Printing error here"
echo "Now, it is working fine"