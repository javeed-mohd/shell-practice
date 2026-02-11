#!/bin/bash

count=1

while [ $count -le 6 ]
do
  echo "Count is $count"
  sleep 1
  # Increment the counter
  ((count++))
done