#!/bin/bash

count=1

# while [ $count -le 5 ]
# do
#   echo "Count is $count"
#   sleep 1
#   # Increment the counter
#   ((count++))
# done

while IFS= read -r LINE; do # IFS --> Internal Field Separation(Line by line separation)
  # Process the line here
  echo "Line content: $LINE"
done < ./22-script-1.sh # Input which file to read