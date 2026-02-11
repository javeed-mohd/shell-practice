#!/bin/bash

# To log files
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/backup.log"  # $0=12-logs.sh(script name)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} # Default value is 14 days, if the user does not supply any value

if [ $USERID -ne 0 ]; then
    echo -e "$R Please run this script with root user access $N" 
fi

mkdir -p $LOGS_FOLDER

USAGE(){
    echo -e "$R USAGE:: sudo backup <SOURCE_DIR> <DEST_DIR> <DAYS>[default 14] $N"
    exit 1
}

log(){
    echo -e "$(date "+%Y-%m-%d %H:%M:%S") | $1" | tee -a $LOGS_FILE
}

if [ $# -lt 2 ]; then
    USAGE
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "$R Source Directory: $SOURCE_DIR does not exist $N"
    exit 1
fi

if [ ! -d "$DEST_DIR" ]; then
    echo -e "$R Destination Directory: $DEST_DIR does not exist $N"
    exit 1
fi

### Finding the Files and Unzipping them

FILES=$(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS)

log "Backup Started"
log "Source Directory: $SOURCE_DIR"
log "Destination Directory: $DEST_DIR"
log "Days: $DAYS"


if [ -z "$FILES" ]; then
    log "No Files to archive... $Y SKIPPING $N" # If No files are available to unzip
else
    # app-logs-$timestamp.zip
    log "Files found to archive: $FILES"
    TIMESTAMP=$(date +%F-%H-%M-%S)
    ZIP_FILE_NAME="$DEST_DIR/app-logs-$TIMESTAMP.tar.gz" # gz --> gun zip is used in linux and .zip is used in windows
    echo "Archive name: $ZIP_FILE_NAME"
    $FILES | tar -zcvf $ZIP_FILE_NAME

    # Check archive is Success or not
    if [ -f $ZIP_FILE_NAME ]; then
        log "Archiving is... $G SUCCESS $N"

        while IFS= read -r filepath; do # IFS --> Internal Field Separation(Line by line separation)
            # Process the line here
            echo "Deleting file: $filepath"
            rm -f $filepath
            echo "Deleted file: $filepath"
        done <<< $FILES
    else
        log "Archiving is... $R FAILURE $N"
        exit 1
    fi
fi