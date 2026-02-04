#!/bin/bash

# To log files
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"  # $0=12-logs.sh(script name)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1 
fi

mkdir -p $LOGS_FOLDER # -p is used because if folder exists it leaves or else it will create

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
dnf install nginx -y &>> $LOGS_FILE # & is used for all whether the code is success or failure to redirect the output to LOGS_FILE AND >> is used for appending and prevent from overriding
VALIDATE $? "Nginx Installation"

echo "Installing MySQL"
dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "MySQL Installation"

echo "Installing Nodejs"
dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Nodejs Installation"