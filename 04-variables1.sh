#!/bin/bash

PERSON1=$1 # No space i between value and =
PERSON2=$2

#$1, $2... are special characters which are used to get the output by entering the value in terminal

echo "$PERSON1:: Hello $PERSON2, How are you?" # If we insert $ at the beginning of the PERSON1, Shell assumes it as Variable, otherwise it will print as normal text
echo "$PERSON2:: Hi $PERSON1, I am good. Thanks for asking. How are you?"
echo "$PERSON1:: I am doing great. What are you learning?"
echo "$PERSON2:: I am learning Shell Scripting. What about you?"