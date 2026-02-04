#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1 # given exit 1 because it will not exit and we know this condition is error so we are giving exit code as other than 0. Because 0 is for success exit status
fi

# Making the code shorter(New)
# By default shell will not execute this, only it will be executed when called (It can be validate, status_check...)

VALIDATE(){

    if [ $1 -ne 0 ]; then
        echo "$2... FAILURE"
        exit 1
    else 
        echo "$2... SUCCESS"
    fi
    
}

echo "Installing Nginx"
dnf install nginx -y
VALIDATE $? "Nginx Installation"

echo "Installing MySQL"
dnf install mysql -y
VALIDATE $? "MySQL Installation"

echo "Installing Nodejs"
dnf install nodejs -y
VALIDATE $? "Nodejs Installation"