#!/bin/bash

# To log files
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"  # $0=12-logs.sh(script name)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e "$R Please run this script with root user access $N" | tee -a $LOGS_FILE
    exit 1 
fi

mkdir -p $LOGS_FOLDER 

# By default shell will not execute this, only it will be executed when called (It can be validate, status_check...)
VALIDATE(){

    if [ $1 -ne 0 ]; then
        echo -e "$2... $R FAILURE $N" | tee -a $LOGS_FILE # Tee is used for showing the output both in terminal and file (logs_file)
        exit 1
    else 
        echo -e "$2... $G SUCCESS $N" | tee -a $LOGS_FILE
    fi

}

for package in $@ # sudo sh 15-loops1.sh nginx mysql nodejs
do
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE $? "$package installation"
    else
        echo -e "$package already installed ... $Y skipping $N"
    fi
done