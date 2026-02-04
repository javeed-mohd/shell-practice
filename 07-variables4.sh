#!/bin/bash

### Special Variables ###


# All args passed to script: $@
# Number of variables passed to script: $#
# Script name: $0
# Present which directory you are in: $PWD
# Who is running this script: $USER
# Home directory of the user: $HOME
# Process Instance ID(PID) of the script: $$
# sleep 100 &
# Background process id: $!
# All args passed to script: $*
# Exit status of previous command: $?

# $@ treats args separately (In scripts we use this command only)
# $* treats all args as single args (which will be known in loops)


echo "All args passed to script: $@"
echo "Number of variables passed to script: $#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running this script: $USER"
echo "Home directory of the current user: $HOME"
echo "PID of this script: $$"
sleep 100 &
echo "PID of recently executed background process: $!"
echo "All args passed to script: $*"
echo "Exit status of previous command: $?"