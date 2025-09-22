#!/bin/bash
LOG_FOLDER="/var/log/shell-script/"
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
FILE_NAME="Matthews"
LOG_FILE="$LOG_FOLDER/$FILE_NAME-$TIME_STAMP.log"
touch $FILE_NAME
mkdir -p $LOG_FOLDER

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root privelages " &>>$LOG_FILE
    exit -1
fi

dnf install nginx -y &>>$LOG_FILE


