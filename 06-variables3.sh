#!/bin/bash

#   TIMESTAMP=$(date) # date is a command whose output value is stored in timestamp variable

#   echo "Script executed at: $TIMESTAMP"

# New File

START_TIME=$(date +%s)

echo "Script executed at: $START_TIME"

sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME-$START_TIME)) # one braces is for mathematics and other is for command execution(output) to store in variable

echo "Script executed in: $TOTAL_TIME"