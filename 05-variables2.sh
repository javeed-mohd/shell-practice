#!bin/bash

echo "Please enter your username::"
read USER_NAME # read command is used to read whatever we type in the terminal and stores the data in USER_NAME and it can be seen by everyone

echo "User name is $USER_NAME"

echo "Please enter your password::"
read -s PASSWORD # Here s hides the data for all for security purpose

# echo "Password is $PASSWORD" # To display the password on the terminal usually we don't prefer this 

