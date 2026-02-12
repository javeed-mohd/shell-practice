#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
MESSAGE=""
IP_ADDRESS=$(curl http://169.254.169.254/latest/meta-data/local-ipv4) # It is used for mail configuration

log(){
    echo -e "$(date "+%Y-%m-%d %H:%M:%S") | $1" | tee -a $LOGS_FILE
}

DISK_USAGE=$(df -hT | grep -v Filesystem)
USAGE_THRESHOLD=3

while IFS= read -r line
do
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk '{print $7}')

    if [ "$USAGE" -ge "$USAGE_THRESHOLD" ]; then
        MESSAGE+="High Disk Usage on $PARTITION: $USAGE% <br>" # \n --> new line in shell scripting and <br> --> new line in html
    fi
done <<< $DISK_USAGE

echo -e "$MESSAGE"

sh mail.sh "javeedmohammed2310@gmail.com" "High Disk Alert Usage on $IP_ADDRESS" "$MESSAGE" "HIGH_DISK_USAGE" "$IP_ADDRESS" "DevOps Team" # Mail Config.