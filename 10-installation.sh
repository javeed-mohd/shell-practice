#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1 # given exit 1 because we know exit code 0 executes
fi

echo "Installing nginx..."

dnf install nginx -y