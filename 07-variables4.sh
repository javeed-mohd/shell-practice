#!/bin/bash

### Special Variables ###

echo "All variables passed to script: $@"
echo "Number of variables passed to script: $#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running this script: $USER"
echo "Home directory of the current user: $HOME"
echo "PID of this script: $$"
sleep 100 &
echo "PID of recently executed background process: $!"
echo "All variables passed to script: $*"
# echo "Exit status of previous command: $?"

