#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_DIR=/home/ec2-user/app-logs
LOS_FILE="$LOGS_DIR/$0.log"

if [ ! -d $LOGS_DIR ]; then # -d --> directory
    echo -e "$LOGS_DIR does not exist"
    exit 1
fi

FILES_TO_DELETE=$(find $LOGS_DIR -name "*.log" -mtime +14)
echo "$FILES_TO_DELETE"

while IFS= read -r LINE; do # IFS --> Internal Field Separation(Line by line separation)
  # Process the line here
  echo "Line content: $LINE"
done <<< $FILES_TO_DELETE # Input which file to read , < is for input and > is for output