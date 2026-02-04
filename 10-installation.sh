#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1 # given exit 1 because it will not exit and we know this condition is error so we are giving exit code as other than 0. Because 0 is for success exit status
fi


echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx... FAILURE"
    exit 1
else 
    echo "Installing Nginx... SUCCESS"
fi

echo "Installing MySQL"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing MySQL... FAILURE"
    exit 1
else 
    echo "Installing MySQL... SUCCESS"
fi

echo "Installing NodeJS"
dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing NodeJS... FAILURE"
    exit 1
else 
    echo "Installing NodeJS... SUCCESS"
fi